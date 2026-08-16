package com.localperks.service.impl;

import cn.hutool.core.bean.BeanUtil;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.localperks.config.OrderStreamProperties;
import com.localperks.dto.Result;
import com.localperks.entity.VoucherOrder;
import com.localperks.mapper.VoucherOrderMapper;
import com.localperks.service.IVoucherOrderService;
import com.localperks.utils.RedisIdWorker;
import com.localperks.utils.UserHolder;
import lombok.extern.slf4j.Slf4j;
import org.redisson.api.RLock;
import org.redisson.api.RedissonClient;
import org.springframework.core.io.ClassPathResource;
import org.springframework.dao.DataAccessException;
import org.springframework.data.redis.connection.stream.Consumer;
import org.springframework.data.redis.connection.stream.MapRecord;
import org.springframework.data.redis.connection.stream.ReadOffset;
import org.springframework.data.redis.connection.stream.StreamOffset;
import org.springframework.data.redis.connection.stream.StreamReadOptions;
import org.springframework.data.redis.core.RedisCallback;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.data.redis.core.script.DefaultRedisScript;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;
import java.nio.charset.StandardCharsets;
import java.time.Duration;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

@Slf4j
@Service
public class VoucherOrderServiceImpl
        extends ServiceImpl<VoucherOrderMapper, VoucherOrder>
        implements IVoucherOrderService {

    private static final DefaultRedisScript<Long> SECKILL_SCRIPT;

    static {
        SECKILL_SCRIPT = new DefaultRedisScript<>();
        SECKILL_SCRIPT.setLocation(new ClassPathResource("seckill.lua"));
        SECKILL_SCRIPT.setResultType(Long.class);
    }

    private final RedisIdWorker redisIdWorker;
    private final StringRedisTemplate stringRedisTemplate;
    private final RedissonClient redissonClient;
    private final VoucherOrderPersistenceService persistenceService;
    private final OrderStreamProperties streamProperties;
    private final AtomicBoolean running = new AtomicBoolean(true);
    private final ExecutorService orderExecutor = Executors.newSingleThreadExecutor(runnable -> {
        Thread thread = new Thread(runnable, "voucher-order-consumer");
        thread.setDaemon(true);
        return thread;
    });

    public VoucherOrderServiceImpl(
            RedisIdWorker redisIdWorker,
            StringRedisTemplate stringRedisTemplate,
            RedissonClient redissonClient,
            VoucherOrderPersistenceService persistenceService,
            OrderStreamProperties streamProperties
    ) {
        this.redisIdWorker = redisIdWorker;
        this.stringRedisTemplate = stringRedisTemplate;
        this.redissonClient = redissonClient;
        this.persistenceService = persistenceService;
        this.streamProperties = streamProperties;
    }

    @PostConstruct
    public void initializeOrderConsumer() {
        createConsumerGroupIfMissing();
        orderExecutor.submit(new VoucherOrderHandler());
    }

    @PreDestroy
    public void stopOrderConsumer() {
        running.set(false);
        orderExecutor.shutdownNow();
    }

    @Override
    public Result seckillVoucher(Long voucherId) {
        Long userId = UserHolder.getUser().getId();
        long orderId = redisIdWorker.nextId("order");

        Long result = stringRedisTemplate.execute(
                SECKILL_SCRIPT,
                Collections.singletonList(streamProperties.getKey()),
                voucherId.toString(),
                userId.toString(),
                String.valueOf(orderId)
        );

        if (result == null) {
            throw new IllegalStateException("The deal eligibility script returned no result.");
        }
        if (result == 1L) {
            return Result.fail("This deal is sold out.");
        }
        if (result == 2L) {
            return Result.fail("Each user can claim this deal only once.");
        }
        return Result.ok(orderId);
    }

    private void createConsumerGroupIfMissing() {
        try {
            stringRedisTemplate.execute((RedisCallback<Object>) connection -> connection.execute(
                    "XGROUP",
                    bytes("CREATE"),
                    bytes(streamProperties.getKey()),
                    bytes(streamProperties.getGroup()),
                    bytes("0"),
                    bytes("MKSTREAM")
            ));
            log.info("Created Redis Stream consumer group {} for {}",
                    streamProperties.getGroup(), streamProperties.getKey());
        } catch (DataAccessException exception) {
            if (!containsBusyGroup(exception)) {
                throw exception;
            }
        }
    }

    private boolean containsBusyGroup(Throwable throwable) {
        Throwable current = throwable;
        while (current != null) {
            if (current.getMessage() != null && current.getMessage().contains("BUSYGROUP")) {
                return true;
            }
            current = current.getCause();
        }
        return false;
    }

    private byte[] bytes(String value) {
        return value.getBytes(StandardCharsets.UTF_8);
    }

    private class VoucherOrderHandler implements Runnable {

        @Override
        public void run() {
            while (running.get() && !Thread.currentThread().isInterrupted()) {
                try {
                    List<MapRecord<String, Object, Object>> records = readNewMessages();
                    if (records == null || records.isEmpty()) {
                        continue;
                    }
                    processAndAcknowledge(records.get(0));
                } catch (Exception exception) {
                    if (!running.get()) {
                        return;
                    }
                    log.error("Failed to process a voucher order message.", exception);
                    handlePendingMessages();
                }
            }
        }

        private List<MapRecord<String, Object, Object>> readNewMessages() {
            return stringRedisTemplate.opsForStream().read(
                    Consumer.from(streamProperties.getGroup(), streamProperties.getConsumer()),
                    StreamReadOptions.empty().count(1).block(Duration.ofSeconds(2)),
                    StreamOffset.create(streamProperties.getKey(), ReadOffset.lastConsumed())
            );
        }

        private void handlePendingMessages() {
            while (running.get() && !Thread.currentThread().isInterrupted()) {
                try {
                    List<MapRecord<String, Object, Object>> records = stringRedisTemplate.opsForStream().read(
                            Consumer.from(streamProperties.getGroup(), streamProperties.getConsumer()),
                            StreamReadOptions.empty().count(1),
                            StreamOffset.create(streamProperties.getKey(), ReadOffset.from("0"))
                    );
                    if (records == null || records.isEmpty()) {
                        return;
                    }
                    processAndAcknowledge(records.get(0));
                } catch (Exception exception) {
                    log.error("Failed to recover a pending voucher order message.", exception);
                    try {
                        Thread.sleep(50L);
                    } catch (InterruptedException interruptedException) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                }
            }
        }

        private void processAndAcknowledge(MapRecord<String, Object, Object> record) {
            Map<Object, Object> values = record.getValue();
            VoucherOrder voucherOrder = BeanUtil.fillBeanWithMap(values, new VoucherOrder(), true);
            handleVoucherOrder(voucherOrder);
            stringRedisTemplate.opsForStream().acknowledge(
                    streamProperties.getKey(),
                    streamProperties.getGroup(),
                    record.getId()
            );
        }
    }

    private void handleVoucherOrder(VoucherOrder voucherOrder) {
        Long userId = voucherOrder.getUserId();
        RLock lock = redissonClient.getLock("lock:order:" + userId);
        if (!lock.tryLock()) {
            throw new IllegalStateException("Another order for this user is already being processed.");
        }

        try {
            persistenceService.createVoucherOrder(voucherOrder);
        } finally {
            lock.unlock();
        }
    }
}

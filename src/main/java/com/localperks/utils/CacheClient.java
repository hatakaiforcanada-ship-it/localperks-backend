package com.localperks.utils;

import cn.hutool.core.util.StrUtil;
import cn.hutool.json.JSONObject;
import cn.hutool.json.JSONUtil;
import lombok.extern.slf4j.Slf4j;
import org.redisson.api.RLock;
import org.redisson.api.RedissonClient;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.function.Function;

import static com.localperks.utils.RedisConstants.CACHE_NULL_TTL;
import static com.localperks.utils.RedisConstants.LOCK_SHOP_KEY;

@Component
@Slf4j
public class CacheClient {

    private static final int MUTEX_MAX_ATTEMPTS = 40;
    private static final long MUTEX_RETRY_DELAY_MILLIS = 50L;
    private static final ExecutorService CACHE_REBUILD_EXECUTOR = Executors.newFixedThreadPool(10);
    private static final Set<String> REBUILDING_KEYS = ConcurrentHashMap.newKeySet();

    private final StringRedisTemplate stringRedisTemplate;
    private final RedissonClient redissonClient;

    public CacheClient(StringRedisTemplate stringRedisTemplate, RedissonClient redissonClient) {
        this.stringRedisTemplate = stringRedisTemplate;
        this.redissonClient = redissonClient;
    }

    public void set(String key, Object value, Long time, TimeUnit unit) {
        stringRedisTemplate.opsForValue().set(key, JSONUtil.toJsonStr(value), time, unit);
    }

    public void setWithLogicalExpire(String key, Object value, Long time, TimeUnit unit) {
        RedisData redisData = new RedisData();
        redisData.setData(value);
        redisData.setExpireTime(LocalDateTime.now().plusSeconds(unit.toSeconds(time)));
        stringRedisTemplate.opsForValue().set(key, JSONUtil.toJsonStr(redisData));
    }

    public <R, ID> R queryWithPassThrough(
            String keyPrefix, ID id, Class<R> type, Function<ID, R> dbFallback,
            Long time, TimeUnit unit) {
        String key = keyPrefix + id;
        String json = stringRedisTemplate.opsForValue().get(key);

        if (StrUtil.isNotBlank(json)) {
            return JSONUtil.toBean(json, type);
        }
        if (json != null) {
            return null;
        }

        R result = dbFallback.apply(id);
        if (result == null) {
            cacheNullValue(key);
            return null;
        }
        set(key, result, time, unit);
        return result;
    }

    public <R, ID> R queryWithLogicalExpire(
            String keyPrefix, ID id, Class<R> type, Function<ID, R> dbFallback,
            Long time, TimeUnit unit) {
        String key = keyPrefix + id;
        String json = stringRedisTemplate.opsForValue().get(key);
        if (StrUtil.isBlank(json)) {
            return null;
        }

        RedisData redisData = JSONUtil.toBean(json, RedisData.class);
        R result = JSONUtil.toBean((JSONObject) redisData.getData(), type);
        if (redisData.getExpireTime().isAfter(LocalDateTime.now())) {
            return result;
        }

        String lockKey = LOCK_SHOP_KEY + id;
        scheduleLogicalCacheRebuild(key, lockKey, id, dbFallback, time, unit);
        return result;
    }

    public <R, ID> R queryWithMutex(
            String keyPrefix, ID id, Class<R> type, Function<ID, R> dbFallback,
            Long time, TimeUnit unit) {
        String key = keyPrefix + id;
        String lockKey = LOCK_SHOP_KEY + id;
        RLock lock = redissonClient.getLock(lockKey);

        for (int attempt = 0; attempt < MUTEX_MAX_ATTEMPTS; attempt++) {
            String json = stringRedisTemplate.opsForValue().get(key);
            if (StrUtil.isNotBlank(json)) {
                return JSONUtil.toBean(json, type);
            }
            if (json != null) {
                return null;
            }

            boolean locked = lock.tryLock();
            if (locked) {
                try {
                    String latestJson = stringRedisTemplate.opsForValue().get(key);
                    if (StrUtil.isNotBlank(latestJson)) {
                        return JSONUtil.toBean(latestJson, type);
                    }
                    if (latestJson != null) {
                        return null;
                    }

                    R result = dbFallback.apply(id);
                    if (result == null) {
                        cacheNullValue(key);
                        return null;
                    }
                    set(key, result, time, unit);
                    return result;
                } finally {
                    unlockIfHeld(lock, lockKey);
                }
            }

            if (attempt < MUTEX_MAX_ATTEMPTS - 1) {
                sleepBeforeRetry(lockKey);
            }
        }

        throw new IllegalStateException("Timed out waiting for cache rebuild lock: " + lockKey);
    }

    private <R, ID> void scheduleLogicalCacheRebuild(
            String key, String lockKey, ID id, Function<ID, R> dbFallback,
            Long time, TimeUnit unit) {
        if (!REBUILDING_KEYS.add(lockKey)) {
            return;
        }

        try {
            CACHE_REBUILD_EXECUTOR.execute(() -> {
                RLock lock = null;
                boolean locked = false;
                try {
                    lock = redissonClient.getLock(lockKey);
                    locked = lock.tryLock();
                    if (!locked || logicalCacheIsFresh(key)) {
                        return;
                    }

                    R newResult = dbFallback.apply(id);
                    if (newResult == null) {
                        cacheNullValue(key);
                    } else {
                        setWithLogicalExpire(key, newResult, time, unit);
                    }
                } catch (Exception e) {
                    log.error("Failed to rebuild logically expired cache for key {}.", key, e);
                } finally {
                    try {
                        if (locked) {
                            unlockIfHeld(lock, lockKey);
                        }
                    } finally {
                        REBUILDING_KEYS.remove(lockKey);
                    }
                }
            });
        } catch (RejectedExecutionException e) {
            REBUILDING_KEYS.remove(lockKey);
            log.error("Cache rebuild task was rejected for key {}.", key, e);
        }
    }

    private boolean logicalCacheIsFresh(String key) {
        String latestJson = stringRedisTemplate.opsForValue().get(key);
        if (StrUtil.isBlank(latestJson)) {
            return true;
        }
        RedisData latestData = JSONUtil.toBean(latestJson, RedisData.class);
        return latestData.getExpireTime().isAfter(LocalDateTime.now());
    }

    private void cacheNullValue(String key) {
        stringRedisTemplate.opsForValue().set(key, "", CACHE_NULL_TTL, TimeUnit.MINUTES);
    }

    private void sleepBeforeRetry(String lockKey) {
        try {
            Thread.sleep(MUTEX_RETRY_DELAY_MILLIS);
        } catch (InterruptedException e) {
            Thread.currentThread().interrupt();
            throw new IllegalStateException("Interrupted while waiting for cache rebuild lock: " + lockKey, e);
        }
    }

    private void unlockIfHeld(RLock lock, String lockKey) {
        if (lock.isHeldByCurrentThread()) {
            lock.unlock();
        } else {
            log.warn("Cache rebuild lock {} is no longer held by the current thread.", lockKey);
        }
    }
}

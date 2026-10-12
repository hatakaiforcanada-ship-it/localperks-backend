package com.localperks.utils;

import cn.hutool.json.JSONUtil;
import com.localperks.entity.Shop;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.redisson.api.RLock;
import org.redisson.api.RedissonClient;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.data.redis.core.ValueOperations;

import java.time.Duration;
import java.time.LocalDateTime;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Function;

import static com.localperks.utils.RedisConstants.CACHE_NULL_TTL;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNull;
import static org.junit.jupiter.api.Assertions.assertSame;
import static org.junit.jupiter.api.Assertions.assertThrows;
import static org.junit.jupiter.api.Assertions.assertTimeout;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.never;
import static org.mockito.Mockito.times;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
class CacheClientTest {

    private static final String KEY_PREFIX = "cache:shop:";
    private static final String LOCK_KEY_PREFIX = "lock:shop:";

    @Mock
    private StringRedisTemplate stringRedisTemplate;
    @Mock
    private ValueOperations<String, String> valueOperations;
    @Mock
    private RedissonClient redissonClient;
    @Mock
    private RLock lock;

    private CacheClient cacheClient;

    @BeforeEach
    void setUp() {
        when(stringRedisTemplate.opsForValue()).thenReturn(valueOperations);
        when(redissonClient.getLock(anyString())).thenReturn(lock);
        cacheClient = new CacheClient(stringRedisTemplate, redissonClient);
    }

    @Test
    void mutexRetryIsBoundedAndDoesNotUnlockWithoutOwnership() {
        Long id = 101L;
        when(valueOperations.get(KEY_PREFIX + id)).thenReturn(null);
        when(lock.tryLock()).thenReturn(false);
        Function<Long, Shop> dbFallback = ignored -> new Shop();

        IllegalStateException exception = assertTimeout(
                Duration.ofSeconds(3),
                () -> assertThrows(
                        IllegalStateException.class,
                        () -> cacheClient.queryWithMutex(
                                KEY_PREFIX, id, Shop.class, dbFallback, 30L, TimeUnit.MINUTES)));

        assertTrue(exception.getMessage().contains(LOCK_KEY_PREFIX + id));
        verify(lock, times(40)).tryLock();
        verify(lock, never()).isHeldByCurrentThread();
        verify(lock, never()).unlock();
    }

    @Test
    void mutexCachesDatabaseResultAndUnlocksOwnedLock() {
        Long id = 102L;
        Shop databaseShop = shop(id, "Database shop");
        when(valueOperations.get(KEY_PREFIX + id)).thenReturn(null);
        when(lock.tryLock()).thenReturn(true);
        when(lock.isHeldByCurrentThread()).thenReturn(true);

        Shop result = cacheClient.queryWithMutex(
                KEY_PREFIX, id, Shop.class, ignored -> databaseShop, 30L, TimeUnit.MINUTES);

        assertSame(databaseShop, result);
        verify(valueOperations).set(
                eq(KEY_PREFIX + id), anyString(), eq(30L), eq(TimeUnit.MINUTES));
        verify(lock).unlock();
    }

    @Test
    void mutexChecksCacheAgainAfterAcquiringLock() {
        Long id = 103L;
        Shop cachedShop = shop(id, "Already rebuilt");
        when(valueOperations.get(KEY_PREFIX + id))
                .thenReturn(null, JSONUtil.toJsonStr(cachedShop));
        when(lock.tryLock()).thenReturn(true);
        when(lock.isHeldByCurrentThread()).thenReturn(true);
        AtomicInteger databaseCalls = new AtomicInteger();

        Shop result = cacheClient.queryWithMutex(
                KEY_PREFIX,
                id,
                Shop.class,
                ignored -> {
                    databaseCalls.incrementAndGet();
                    return new Shop();
                },
                30L,
                TimeUnit.MINUTES);

        assertEquals(cachedShop.getId(), result.getId());
        assertEquals(cachedShop.getName(), result.getName());
        assertEquals(0, databaseCalls.get());
        verify(lock).unlock();
    }

    @Test
    void mutexPreservesNullCaching() {
        Long id = 104L;
        when(valueOperations.get(KEY_PREFIX + id)).thenReturn(null);
        when(lock.tryLock()).thenReturn(true);
        when(lock.isHeldByCurrentThread()).thenReturn(true);

        Shop result = cacheClient.queryWithMutex(
                KEY_PREFIX, id, Shop.class, ignored -> null, 30L, TimeUnit.MINUTES);

        assertNull(result);
        verify(valueOperations).set(
                KEY_PREFIX + id, "", CACHE_NULL_TTL, TimeUnit.MINUTES);
        verify(lock).unlock();
    }

    @Test
    void logicalExpireRebuildsOnceAndUnlocksOnTheWorkerThread() throws Exception {
        Long id = 105L;
        String key = KEY_PREFIX + id;
        Shop staleShop = shop(id, "Stale shop");
        Shop freshShop = shop(id, "Fresh shop");
        when(valueOperations.get(key)).thenReturn(expiredJson(staleShop));

        AtomicReference<Thread> lockOwner = new AtomicReference<>();
        CountDownLatch rebuildStarted = new CountDownLatch(1);
        CountDownLatch allowRebuildToFinish = new CountDownLatch(1);
        CountDownLatch lockReleased = new CountDownLatch(1);
        AtomicInteger databaseCalls = new AtomicInteger();

        when(lock.tryLock()).thenAnswer(invocation -> {
            lockOwner.set(Thread.currentThread());
            return true;
        });
        when(lock.isHeldByCurrentThread())
                .thenAnswer(invocation -> Thread.currentThread() == lockOwner.get());
        org.mockito.Mockito.doAnswer(invocation -> {
            assertSame(lockOwner.get(), Thread.currentThread());
            lockReleased.countDown();
            return null;
        }).when(lock).unlock();

        Function<Long, Shop> dbFallback = ignored -> {
            databaseCalls.incrementAndGet();
            rebuildStarted.countDown();
            try {
                if (!allowRebuildToFinish.await(2, TimeUnit.SECONDS)) {
                    throw new IllegalStateException("Timed out waiting to finish the test rebuild");
                }
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                throw new IllegalStateException(e);
            }
            return freshShop;
        };

        Shop firstResult = cacheClient.queryWithLogicalExpire(
                KEY_PREFIX, id, Shop.class, dbFallback, 30L, TimeUnit.MINUTES);
        assertEquals("Stale shop", firstResult.getName());
        assertTrue(rebuildStarted.await(2, TimeUnit.SECONDS));

        try {
            Shop secondResult = cacheClient.queryWithLogicalExpire(
                    KEY_PREFIX, id, Shop.class, dbFallback, 30L, TimeUnit.MINUTES);
            assertEquals("Stale shop", secondResult.getName());
        } finally {
            allowRebuildToFinish.countDown();
        }

        assertTrue(lockReleased.await(2, TimeUnit.SECONDS));
        assertEquals(1, databaseCalls.get());
        verify(lock, times(1)).tryLock();
        verify(lock, times(1)).unlock();
        verify(valueOperations, times(1)).set(eq(key), anyString());
    }

    @Test
    void logicalExpireDoesNotUnlockWhenWorkerCannotAcquireLock() {
        Long id = 106L;
        String key = KEY_PREFIX + id;
        Shop staleShop = shop(id, "Stale shop");
        when(valueOperations.get(key)).thenReturn(expiredJson(staleShop));
        when(lock.tryLock()).thenReturn(false);
        AtomicInteger databaseCalls = new AtomicInteger();

        Shop result = cacheClient.queryWithLogicalExpire(
                KEY_PREFIX,
                id,
                Shop.class,
                ignored -> {
                    databaseCalls.incrementAndGet();
                    return new Shop();
                },
                30L,
                TimeUnit.MINUTES);

        assertEquals("Stale shop", result.getName());
        verify(lock, org.mockito.Mockito.timeout(2000)).tryLock();
        assertEquals(0, databaseCalls.get());
        verify(lock, never()).isHeldByCurrentThread();
        verify(lock, never()).unlock();
    }

    private static Shop shop(Long id, String name) {
        Shop shop = new Shop();
        shop.setId(id);
        shop.setName(name);
        return shop;
    }

    private static String expiredJson(Shop shop) {
        RedisData redisData = new RedisData();
        redisData.setData(shop);
        redisData.setExpireTime(LocalDateTime.now().minusMinutes(1));
        return JSONUtil.toJsonStr(redisData);
    }
}

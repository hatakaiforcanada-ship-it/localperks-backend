# Architecture notes

## Login lifecycle

1. A verification code is stored as `login:code:{phone}` with a short TTL.
2. Successful login stores a minimal user hash as `login:token:{token}`.
3. The client sends `Authorization: Bearer <token>`.
4. `RefreshTokenInterceptor` restores the user into `UserHolder` and refreshes the TTL.
5. `LoginInterceptor` rejects protected requests when no current user is available.

## Limited-time offer lifecycle

1. The API generates a globally unique order ID.
2. Lua checks Redis inventory and the per-offer user set atomically.
3. An accepted order is appended to the configured Redis Stream.
4. The consumer reads through a consumer group and acquires a Redisson lock per user.
5. `VoucherOrderPersistenceService` performs the idempotency check, database inventory decrement, and order insert in one transaction.
6. The Stream message is acknowledged only after persistence succeeds.
7. Unacknowledged messages are retried from the pending list.

The database also has a unique `(user_id, voucher_id)` index as a final one-claim-per-user safeguard.

## Cache patterns

`CacheClient` centralizes cache-aside reads, null-value caching, Redisson-based mutex rebuilds, and logical expiration. `ShopServiceImpl` currently uses the cache-aside/pass-through path for business details; the mutex and logical-expiration methods remain explicit, tested strategies that can be selected for different consistency and latency requirements.

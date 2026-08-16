local voucherId = ARGV[1]
local userId = ARGV[2]
local orderId = ARGV[3]
-- 1.4.Redis Stream key
local streamKey = KEYS[1]

local stockKey = 'seckill:stock:' .. voucherId
local orderKey = 'seckill:order:' .. voucherId

if(tonumber(redis.call('get', stockKey)) <= 0) then
    -- 3.2.库存不足，返回1
    return 1
end
if(redis.call('sismember', orderKey, userId) == 1) then
    -- 3.3.存在，说明是重复下单，返回2
    return 2
end
redis.call('incrby', stockKey, -1)
redis.call('sadd', orderKey, userId)
redis.call('xadd', streamKey, '*', 'userId', userId, 'voucherId', voucherId, 'id', orderId)
return 0

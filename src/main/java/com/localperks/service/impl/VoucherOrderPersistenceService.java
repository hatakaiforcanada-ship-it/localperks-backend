package com.localperks.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.localperks.entity.VoucherOrder;
import com.localperks.mapper.VoucherOrderMapper;
import com.localperks.service.ISeckillVoucherService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class VoucherOrderPersistenceService {

    private final VoucherOrderMapper voucherOrderMapper;
    private final ISeckillVoucherService seckillVoucherService;

    public VoucherOrderPersistenceService(
            VoucherOrderMapper voucherOrderMapper,
            ISeckillVoucherService seckillVoucherService
    ) {
        this.voucherOrderMapper = voucherOrderMapper;
        this.seckillVoucherService = seckillVoucherService;
    }

    @Transactional
    public void createVoucherOrder(VoucherOrder voucherOrder) {
        Integer existingOrders = voucherOrderMapper.selectCount(
                new QueryWrapper<VoucherOrder>()
                        .eq("user_id", voucherOrder.getUserId())
                        .eq("voucher_id", voucherOrder.getVoucherId())
        );

        // Treat an already persisted order as an idempotent replay so the
        // corresponding Redis Stream message can still be acknowledged.
        if (existingOrders != null && existingOrders > 0) {
            return;
        }

        boolean stockUpdated = seckillVoucherService.update()
                .setSql("stock = stock - 1")
                .eq("voucher_id", voucherOrder.getVoucherId())
                .gt("stock", 0)
                .update();
        if (!stockUpdated) {
            throw new IllegalStateException("Database inventory is exhausted.");
        }

        if (voucherOrderMapper.insert(voucherOrder) != 1) {
            throw new IllegalStateException("Failed to persist the voucher order.");
        }
    }
}

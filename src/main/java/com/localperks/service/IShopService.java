package com.localperks.service;

import com.localperks.dto.Result;
import com.localperks.entity.Shop;
import com.baomidou.mybatisplus.extension.service.IService;

public interface IShopService extends IService<Shop> {

    Result queryById(Long id);

    Result update(Shop shop);
}

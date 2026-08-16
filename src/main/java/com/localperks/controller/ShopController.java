package com.localperks.controller;


import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.localperks.dto.Result;
import com.localperks.entity.Shop;
import com.localperks.service.IShopService;
import com.localperks.service.impl.ShopServiceImpl;
import com.localperks.utils.SystemConstants;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

@RestController
@RequestMapping("/businesses")
public class ShopController {

    @Resource
    public IShopService shopService;

    @GetMapping("/{id}")
    public Result queryShopById(@PathVariable("id") Long id) {

        return shopService.queryById(id);
    }

    @PostMapping
    public Result saveShop(@RequestBody Shop shop) {
        shopService.save(shop);
        return Result.ok(shop.getId());
    }

    @PutMapping
    public Result updateShop(@RequestBody Shop shop) {

        return shopService.update(shop);
    }

    @GetMapping("/of/type")
    public Result queryShopByType(
            @RequestParam("typeId") Integer typeId,
            @RequestParam(value = "current", defaultValue = "1") Integer current
    ) {
        Page<Shop> page = shopService.query()
                .eq("type_id", typeId)
                .page(new Page<>(current, SystemConstants.DEFAULT_PAGE_SIZE));
        return Result.ok(page.getRecords());
    }

    @GetMapping("/of/name")
    public Result queryShopByName(
            @RequestParam(value = "name", required = false) String name,
            @RequestParam(value = "current", defaultValue = "1") Integer current
    ) {
        Page<Shop> page = shopService.query()
                .like(StrUtil.isNotBlank(name), "name", name)
                .page(new Page<>(current, SystemConstants.MAX_PAGE_SIZE));
        return Result.ok(page.getRecords());
    }
}

package com.localperks.service.impl;

import com.localperks.entity.ShopType;
import com.localperks.mapper.ShopTypeMapper;
import com.localperks.service.IShopTypeService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

@Service
public class ShopTypeServiceImpl extends ServiceImpl<ShopTypeMapper, ShopType> implements IShopTypeService {

}

package com.localperks.service.impl;

import com.localperks.entity.Follow;
import com.localperks.mapper.FollowMapper;
import com.localperks.service.IFollowService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

@Service
public class FollowServiceImpl extends ServiceImpl<FollowMapper, Follow> implements IFollowService {

}

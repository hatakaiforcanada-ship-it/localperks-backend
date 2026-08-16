package com.localperks.service.impl;

import com.localperks.entity.BlogComments;
import com.localperks.mapper.BlogCommentsMapper;
import com.localperks.service.IBlogCommentsService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

@Service
public class BlogCommentsServiceImpl extends ServiceImpl<BlogCommentsMapper, BlogComments> implements IBlogCommentsService {

}

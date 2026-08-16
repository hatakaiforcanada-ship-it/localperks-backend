package com.localperks.service.impl;

import com.localperks.entity.Blog;
import com.localperks.mapper.BlogMapper;
import com.localperks.service.IBlogService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

@Service
public class BlogServiceImpl extends ServiceImpl<BlogMapper, Blog> implements IBlogService {

}

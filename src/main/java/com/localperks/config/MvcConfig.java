package com.localperks.config;

import com.localperks.utils.LoginInterceptor;
import com.localperks.utils.RefreshTokenInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import javax.annotation.Resource;

@Configuration
public class MvcConfig implements WebMvcConfigurer {

    @Resource
    private StringRedisTemplate stringRedisTemplate;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new LoginInterceptor())
                .excludePathPatterns(
                        "/users/code",
                        "/users/login",
                        "/posts/hot",
                        "/businesses/**",
                        "/business-types/**",
                        "/uploads/**",
                        "/offers/**"
                ).order(1);

        registry.addInterceptor(new RefreshTokenInterceptor(stringRedisTemplate)).order(0);

    }
}

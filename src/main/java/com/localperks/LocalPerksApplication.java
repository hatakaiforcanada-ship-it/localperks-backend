package com.localperks;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.EnableAspectJAutoProxy;

@EnableAspectJAutoProxy(exposeProxy = true)
@MapperScan("com.localperks.mapper")
@SpringBootApplication
public class LocalPerksApplication {

    public static void main(String[] args) {
        SpringApplication.run(LocalPerksApplication.class, args);
    }


}

package com.localperks.controller;


import com.localperks.dto.LoginFormDTO;
import com.localperks.dto.Result;
import com.localperks.dto.UserDTO;
import com.localperks.entity.UserInfo;
import com.localperks.service.IUserInfoService;
import com.localperks.service.IUserService;
import com.localperks.utils.UserHolder;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;

@Slf4j
@RestController
@RequestMapping("/users")
public class UserController {

    @Resource
    private IUserService userService;

    @Resource
    private IUserInfoService userInfoService;

    @PostMapping("code")
    public Result sendCode(@RequestParam("phone") String phone) {
        return userService.sendCode(phone);
    }

    @PostMapping("/login")
    public Result login(@RequestBody LoginFormDTO loginForm){
        return userService.login(loginForm);
    }

    @PostMapping("/logout")
    public Result logout(@RequestHeader(value = "Authorization", required = false) String authorizationHeader){
        return userService.logout(authorizationHeader);
    }

    @GetMapping("/me")
    public Result me(){
        UserDTO user = UserHolder.getUser();
        return Result.ok(user);
    }

    @GetMapping("/info/{id}")
    public Result info(@PathVariable("id") Long userId){
        UserInfo info = userInfoService.getById(userId);
        if (info == null) {
            return Result.ok();
        }
        info.setCreateTime(null);
        info.setUpdateTime(null);
        return Result.ok(info);
    }
}

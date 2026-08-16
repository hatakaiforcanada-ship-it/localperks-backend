package com.localperks.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.localperks.dto.LoginFormDTO;
import com.localperks.dto.Result;
import com.localperks.entity.User;

public interface IUserService extends IService<User> {

    Result sendCode(String phone);

    Result login(LoginFormDTO loginForm);

    Result logout(String authorizationHeader);
}

package com.localperks.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.bean.copier.CopyOptions;
import cn.hutool.core.lang.UUID;
import com.localperks.dto.UserDTO;

import cn.hutool.core.util.RandomUtil;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.localperks.dto.LoginFormDTO;
import com.localperks.dto.Result;
import com.localperks.entity.User;
import com.localperks.mapper.UserMapper;
import com.localperks.service.IUserService;
import com.localperks.utils.RedisConstants;
import com.localperks.utils.RegexUtils;
import com.localperks.utils.AuthTokenUtils;
import lombok.extern.slf4j.Slf4j;
import org.springframework.data.redis.core.StringRedisTemplate;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;

import static com.localperks.utils.RedisConstants.*;
import static com.localperks.utils.SystemConstants.USER_NICK_NAME_PREFIX;

@Slf4j
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements IUserService {

    @Resource
    private StringRedisTemplate stringRedisTemplate;

    @Override
    public Result sendCode(String phone) {

        //1.Validate if phone is valid
        if (RegexUtils.isPhoneInvalid(phone)) {
            //2.invalid
            return Result.fail("Use an international phone number in E.164 format, such as +14155552671.");
        }

        //3.ok,generate Verification code
        String code = RandomUtil.randomNumbers(6);

        //4.save to session  ->  ***save to redis***
        stringRedisTemplate.opsForValue().set(LOGIN_CODE_KEY + phone, code, LOGIN_CODE_TTL, TimeUnit.MINUTES);

        //5.send verification code
        log.debug("Verification code sent: {}", code);

        return Result.ok();
    }

    @Override
    public Result login(LoginFormDTO loginForm) {
        //1.verify phone number
        String phone = loginForm.getPhone();
        if (RegexUtils.isPhoneInvalid(phone)) {
            //invalid
            return Result.fail("Use an international phone number in E.164 format, such as +14155552671.");
        }

        //2.get verification code from session and verify ->  from Redis****
        String cacheCode = stringRedisTemplate.opsForValue().get(LOGIN_CODE_KEY + phone);
        String code = loginForm.getCode();
        if(cacheCode == null || !cacheCode.equals(code)){
            //3.not equal
            return Result.fail("The verification code is invalid or has expired.");
        }

        //4.look up a user by phone number
        User user = query().eq("phone", phone).one();

        //5.verify if user exists
        if(user == null){
            //6.if not exist: Create a new user and save
            user = createUserWithPhone(phone);
        }

        // Verification codes are single-use.
        stringRedisTemplate.delete(LOGIN_CODE_KEY + phone);

        //7.1 generate token
        String token = UUID.randomUUID().toString(true);

        //7.2 transform User object to HashMap
        UserDTO userDTO = BeanUtil.copyProperties(user, UserDTO.class);

        Map<String, Object> userMap = BeanUtil.beanToMap(userDTO, new HashMap<>(),
                CopyOptions.create()
                        .setIgnoreNullValue(true)
                        .setFieldValueEditor((fieldName, fieldValue) -> fieldValue.toString()));

        //7.3 save to Redis
        String tokenKey = LOGIN_USER_KEY + token;
        stringRedisTemplate.opsForHash().putAll(tokenKey, userMap);

        //7.4 Set token validity period
        stringRedisTemplate.expire(tokenKey, RedisConstants.LOGIN_USER_TTL, TimeUnit.MINUTES);

        // 8. return token to frontend
        return Result.ok(token);
    }

    @Override
    public Result logout(String authorizationHeader) {
        String token = AuthTokenUtils.extractToken(authorizationHeader);
        if (token != null) {
            stringRedisTemplate.delete(LOGIN_USER_KEY + token);
        }
        return Result.ok();
    }

    private User createUserWithPhone(String phone) {
        User user = new User();
        user.setPhone(phone);
        user.setNickName(USER_NICK_NAME_PREFIX + RandomUtil.randomNumbers(10));

        save(user);

        return user;
    }
}

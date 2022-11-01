package com.example.covid19map.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.covid19map.entity.User;

/**
 * @author Jun
 * @date 2022/11/1 13:11
 * @description LoginService
 */
public interface UserService extends IService<User> {
    User login(String username, String password);
}

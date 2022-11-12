package com.example.covid19map.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.covid19map.dao.RoleMapper;
import com.example.covid19map.dao.UserMapper;
import com.example.covid19map.entity.User;
import com.example.covid19map.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Jun
 * @date 2022/11/1 13:12
 * @description UserServiceImpl
 */
@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements UserService {
    @Autowired
    private UserMapper userMapper;
    @Autowired
    private RoleMapper roleMapper;

    @Override
    public User login(String username, String password) {
        return userMapper.login(username, password);
    }

    @Override
    public void saveUserRole(Integer uid, Integer[] ids) {
        roleMapper.deleteRoleUserByUid(uid);
        if (ids!=null&&ids.length>0) {
            for (Integer rid:ids){
                roleMapper.saveUserRole(uid, rid);
            }
        }
    }
}

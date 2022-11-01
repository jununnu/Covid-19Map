package com.example.covid19map.realm;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.example.covid19map.entity.User;
import com.example.covid19map.service.UserService;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

/**
 * @author Jun
 * @date 2022/11/1 22:14
 * @description UserRealm
 */
public class UserRealm extends AuthorizingRealm {

    @Autowired
    UserService userService;

    @Override
    public String getName(){
        return this.getClass().getSimpleName();
    }


    // 认证
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("username", token.getPrincipal().toString());
        User user =userService.getOne(queryWrapper);
        if (user!=null) {
            SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(user, user.getPassword(), this.getName());
            return info;
        }
        return null;
    }

    // 授权
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        return null;
    }


}

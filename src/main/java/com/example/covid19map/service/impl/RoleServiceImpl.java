package com.example.covid19map.service.impl;

import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.covid19map.dao.RoleMapper;
import com.example.covid19map.entity.Role;
import com.example.covid19map.service.RoleService;
import org.springframework.stereotype.Service;

/**
 * @author Jun
 * @date 2022/11/6 17:25
 * @description RoleServiceImpl
 */
@Service
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements RoleService {
}

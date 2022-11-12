package com.example.covid19map.service.impl;

import com.baomidou.mybatisplus.extension.api.R;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.covid19map.dao.RoleMapper;
import com.example.covid19map.entity.Role;
import com.example.covid19map.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Jun
 * @date 2022/11/6 17:25
 * @description RoleServiceImpl
 */
@Service
public class RoleServiceImpl extends ServiceImpl<RoleMapper, Role> implements RoleService {
    @Autowired
    private RoleMapper roleMapper;

    @Override
    public List<Integer> queryAllPermissionByRid(Integer roleId) {
        return roleMapper.queryMidByRid(roleId);
    }

    @Override
    public void deleteRoleByRid(Integer rid) {
        roleMapper.deleteRoleByRid(rid);
    }

    @Override
    public void saveRoleMenu(Integer rid, Integer mid) {
        roleMapper.saveRoleMenu(rid, mid);
    }

    @Override
    public List<Integer> queryUserRoleById(Integer id) {
        return roleMapper.queryUserRoleById(id);
    }
}

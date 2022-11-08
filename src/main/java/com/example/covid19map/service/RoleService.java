package com.example.covid19map.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.covid19map.entity.Role;

import java.util.List;

/**
 * @author Jun
 * @date 2022/11/6 17:25
 * @description RoleService
 */
public interface RoleService extends IService<Role> {
    List<Integer> queryAllPermissionByRid(Integer roleId);

    void deleteRoleByRid(Integer rid);

    void saveRoleMenu(Integer rid, Integer mid);
}

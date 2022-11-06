package com.example.covid19map.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.covid19map.entity.Role;
import com.example.covid19map.service.RoleService;
import com.example.covid19map.vo.DataView;
import com.example.covid19map.vo.RoleVo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.xml.crypto.Data;

/**
 * @author Jun
 * @date 2022/11/6 17:09
 * @description RoleController
 */
@Controller
@RequestMapping("/role")
public class RoleController {
    @Autowired
    private RoleService roleService;

    @RequestMapping("/toRole")
    public String toRole(){
        return "role/role";
    }

    // 查询所有角色带分页，带有查询条件
    @RequestMapping("/loadAllRole")
    @ResponseBody
    public DataView loadAllRole(RoleVo roleVo){
        IPage<Role> page = new Page<>(roleVo.getPage(), roleVo.getLimit());
        QueryWrapper<Role> queryWrapper = new QueryWrapper<>();
        // 判空
        queryWrapper.like(StringUtils.isNotBlank(roleVo.getName()), "name", roleVo.getName());
        queryWrapper.like(StringUtils.isNotBlank(roleVo.getRemark()), "remark", roleVo.getRemark());
        roleService.page(page, queryWrapper);
        return new DataView(page.getTotal(), page.getRecords());
    }

    // 添加角色
    @RequestMapping("/addRole")
    @ResponseBody
    public DataView addRole(Role role){
        roleService.save(role);
        DataView dataView = new DataView();
        dataView.setMsg("添加角色成功！");
        dataView.setCode(200);
        return dataView;
}

    // 删除角色
    @RequestMapping("/deleteRole")
    @ResponseBody
    public DataView deleteRole(Role role){
        roleService.removeById(role.getId());
        DataView dataView = new DataView();
        dataView.setMsg("删除角色成功！");
        dataView.setCode(200);
        return dataView;
    }

    // 修改角色
    @RequestMapping("/updateRole")
    @ResponseBody
    public DataView updateRole(Role role){
        roleService.saveOrUpdate(role);
//        roleService.save(role);
        DataView dataView = new DataView();
        dataView.setMsg("修改角色成功！");
        dataView.setCode(200);
        return dataView;
    }
}

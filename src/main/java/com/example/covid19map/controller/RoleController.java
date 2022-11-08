package com.example.covid19map.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.covid19map.entity.Menu;
import com.example.covid19map.entity.Role;
import com.example.covid19map.service.MenuService;
import com.example.covid19map.service.RoleService;
import com.example.covid19map.util.TreeNode;
import com.example.covid19map.vo.DataView;
import com.example.covid19map.vo.RoleVo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.xml.crypto.Data;
import java.util.ArrayList;
import java.util.List;

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

    @Autowired
    private MenuService menuService;

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

    // 初始化下拉列表权限
    @RequestMapping("/initPermissionByRoleId")
    @ResponseBody
    public DataView initPermissionByRoleId(Integer roleId){
        // 查找所有菜单权限
        QueryWrapper<Menu> queryWrapper = new QueryWrapper<>();
        List<Menu> allPermissions = menuService.list();
        // 根据角色rid（roleId）查询所有的菜单mid
        List<Integer> currentRolePermissions = roleService.queryAllPermissionByRid(roleId);
        // rid，mid所有的id，去查询菜单和角色的数据
        List<Menu> menus = null;
        // 查询到mid， rid
        if (currentRolePermissions.size()>0) {
            queryWrapper.in("id", currentRolePermissions);
            menus = menuService.list(queryWrapper);
        }else {
            menus = new ArrayList<>();
        }
        // 返回前台格式，带有层级关系TreeNode
        List<TreeNode> nodes = new ArrayList<>();
        for (Menu allPermission : allPermissions) {
            String checkArr = "0";
            for (Menu currentPermission : menus) {
                if (allPermission.getId().equals(currentPermission.getId())) {
                    checkArr = "1";
                    break;
                }
            }
            Boolean spread = (allPermission.getOpen()==null || allPermission.getOpen()==1) ? true:false;
            nodes.add(new TreeNode(allPermission.getId(), allPermission.getPid(), allPermission.getTitle(), spread, checkArr));
        }
        return new DataView(nodes);
    }

    // 确认分配权限，插入数据库role_menu
    // var params = rid+data.id
    @RequestMapping("/saveRolePermission")
    @ResponseBody
    public DataView saveRolePermission(Integer rid, Integer[] mids){
        // 删除rid之前的mid权限
        roleService.deleteRoleByRid(rid);
        // 保存选择权限
        if (mids!=null && mids.length>0) {
            for (Integer mid : mids) {
                roleService.saveRoleMenu(rid, mid);
            }
        }
        DataView dataView = new DataView();
        dataView.setCode(200);
        dataView.setMsg("菜单权限分配成功！");
        return dataView;
    }
}

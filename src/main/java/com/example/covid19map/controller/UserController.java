package com.example.covid19map.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.covid19map.entity.BanJi;
import com.example.covid19map.entity.User;
import com.example.covid19map.entity.XueYuan;
import com.example.covid19map.service.BanJiService;
import com.example.covid19map.service.RoleService;
import com.example.covid19map.service.UserService;
import com.example.covid19map.service.XueYuanService;
import com.example.covid19map.vo.DataView;
import com.example.covid19map.vo.UserVo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.Map;

/**
 * @author Jun
 * @date 2022/11/10 13:44
 * @description UserController
 */
@RestController
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private BanJiService banJiService;

    @Autowired
    private XueYuanService xueYuanService;

    @Autowired
    private RoleService roleService;

    // 分页查询所有数据
    @RequestMapping("/user/loadAllUser")
    @ResponseBody
    public DataView getAllUser(UserVo userVo) {
        // 第一种方法
//        if (StringUtils.isNotBlank(userVo.getUsername())) {
//            userService.loadUserByLeftJoin(userVo.getUsername(), userVo.getPage(), userVo.getLimit());
//        }
//        @Select("select a.username, b.name from user as a where a.username = #{} left join ban_ji as b on a.ban_ji_id = b.id limit {}, {}")

        // 第二种方法
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        IPage<User> page = new Page<>(userVo.getPage(), userVo.getLimit());
        queryWrapper.like(StringUtils.isNotBlank(userVo.getUsername()), "username", userVo.getUsername());
        queryWrapper.eq(StringUtils.isNotBlank(userVo.getPhone()), "phone", userVo.getPhone());
        IPage<User> iPage = userService.page(page, queryWrapper);

        for (User user : iPage.getRecords()) {
            // 为班级名字赋值
            if (user.getBanJiId() != null) {
                // 班级查库
                BanJi banJi = banJiService.getById(user.getBanJiId());
                user.setBanJiName(banJi.getName());
            }
            // 为学院名字赋值
            if (user.getXueYuanId() != null) {
                XueYuan xueYuan = xueYuanService.getById(user.getXueYuanId());
                user.setXueYuanName(xueYuan.getName());
            }
            // 为老师名字赋值
            if (user.getTeacherId() != null) {
                User teacher = userService.getById(user.getTeacherId());
                user.setTeacherName(teacher.getUsername());
            }
        }

        return new DataView(iPage.getTotal(), iPage.getRecords());
    }

    /**
     * 新增用户
     */
    @RequestMapping("/user/addUser")
    @ResponseBody
    public DataView addUser(User user) {
        userService.save(user);
        DataView dataView = new DataView();
        dataView.setMsg("添加用户成功！");
        dataView.setCode(200);
        return dataView;
    }


    /**
     * 修改用户
     */
    @RequestMapping("/user/updateUser")
    @ResponseBody
    public DataView updateUser(User user) {
        userService.updateById(user);
        DataView dataView = new DataView();
        dataView.setMsg("修改用户成功！");
        dataView.setCode(200);
        return dataView;
    }

    /**
     * 删除用户
     */
    @RequestMapping("/user/deleteUser/{id}")
    @ResponseBody
    public DataView deleteUser(@PathVariable("id") Integer id) {
        userService.removeById(id);
        DataView dataView = new DataView();
        dataView.setMsg("删除用户成功！");
        dataView.setCode(200);
        return dataView;
    }

    /**
     * 初始化下拉班级列表
     */
    @RequestMapping("/user/listAllBanJi")
    @ResponseBody
    public List<BanJi> listAllBanJi() {
        List<BanJi> list = banJiService.list();
        return list;
    }

    /**
     * 初始化学院下拉列表
     */
    @RequestMapping("/user/listAllXueYuan")
    @ResponseBody
    public List<XueYuan> listAllXueYuan() {
        List<XueYuan> list = xueYuanService.list();
        return list;
    }


    /**
     * 删除用户
     */
    @RequestMapping("/user/resetPwd/{id}")
    @ResponseBody
    public DataView resetPwd(@PathVariable("id") Integer id) {
        User user = new User();
        user.setId(id);
        user.setPassword("123456");
        userService.updateById(user);
        DataView dataView = new DataView();
        dataView.setMsg("用户重置密码成功！");
        dataView.setCode(200);
        return dataView;
    }

    /**
     * 点击分配时，初始化用户角色
     */
    @RequestMapping("/user/initRoleByUserId")
    @ResponseBody
    public DataView initRoleByUserId(Integer id){
        // 查询角色
        List<Map<String, Object>> maps = roleService.listMaps();
        // 查询当前登录用户所拥有的角色,根据uid查询rid
        List<Integer> currentUserRoleIds = roleService.queryUserRoleById(id);
        // 让前端变为选中状态
        for (Map<String, Object> map : maps) {
            Boolean LAY_CHECKED = false;
            Integer roleId = (Integer) map.get("id");
            for (Integer rid : currentUserRoleIds) {
                if (rid.equals(roleId)) {
                    LAY_CHECKED = true;
                    break;
                }
            }
            map.put("LAY_CHECKED", LAY_CHECKED);
        }
        return new DataView(Long.valueOf(maps.size()), maps);
    }

    /**
     * 保存角色分配权限,1:m
     */
    @RequestMapping("/user/saveUserRole")
    @ResponseBody
    public DataView saveUserRole(Integer uid, Integer[] ids){
        userService.saveUserRole(uid, ids);
        DataView dataView = new DataView();
        dataView.setCode(200);
        dataView.setMsg("角色分配成功！");
        return dataView;
    }
}

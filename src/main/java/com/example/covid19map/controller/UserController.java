package com.example.covid19map.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.covid19map.entity.BanJi;
import com.example.covid19map.entity.User;
import com.example.covid19map.entity.XueYuan;
import com.example.covid19map.service.BanJiService;
import com.example.covid19map.service.UserService;
import com.example.covid19map.service.XueYuanService;
import com.example.covid19map.vo.DataView;
import com.example.covid19map.vo.UserVo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.xml.crypto.Data;

/**
 * @author Jun
 * @date 2022/11/10 13:44
 * @description UserController
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private BanJiService banJiService;

    @Autowired
    private XueYuanService xueYuanService;

    @RequestMapping("/toUser")
    public String toUser(){
        return "user/user";
    }

    @RequestMapping("/toChangePassword")
    public String toChangePassword(){
        return "user/changepassword";
    }

    @RequestMapping("/toUserInfo")
    public String toUserInfo(){
        return "user/userInfo";
    }

    // 分页查询所有数据
    @RequestMapping("/loadAllUser")
    @ResponseBody
    public DataView getAllUser(UserVo userVo){
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
            if (user.getBanJiId()!=null) {
                // 班级查库
                BanJi banJi = banJiService.getById(user.getBanJiId());
                user.setBanJiName(banJi.getName());
            }
            // 为学院名字赋值
            if (user.getXueYuanId()!=null) {
                XueYuan xueYuan = xueYuanService.getById(user.getXueYuanId());
                user.setXueYuanName(xueYuan.getName());
            }
            // 为老师名字赋值
            if (user.getTeacherId()!=null) {
                User teacher = userService.getById(user.getTeacherId());
                user.setTeacherName(teacher.getUsername());
            }
        }

        return new DataView(iPage.getTotal(), iPage.getRecords());
    }

}

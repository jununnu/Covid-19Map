package com.example.covid19map.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Jun
 * @date 2022/11/16 21:11
 * @description ApiController
 */
@Controller
public class ApiController {

    @RequestMapping("banji/toBanJi")
    public String toBanji(){
        return "banji/banji";
    }

    @RequestMapping("/toChinaManager")
    public String toChinaManager(){
        return "admin/chinadatamanager";
    }

    @RequestMapping("/toGlobal")
    public String toGlobal(){
        return "global";
    }

    @RequestMapping("/toHealthClock")
    public String toHealthClock(){
        return "admin/healthClock";
    }

    @RequestMapping("hesuan/toHeSuan")
    public String toHesuan(){
        return "hesuan/hesuan";
    }

    @RequestMapping("/toLogin")
    public String toLogin(){
        return "login";
    }

    @RequestMapping("menu/toMenu")
    private String toMenu(){
        return "/menu/menu";
    }

    @RequestMapping("news/toNews")
    public String toNews(){
        return "news/news";
    }

    @RequestMapping("role/toRole")
    public String toRole(){ return "role/role";}

    @RequestMapping("user/toUser")
    public String toUser() {
        return "user/user";
    }

    @RequestMapping("/toChangePassword")
    public String toChangePassword() {
        return "user/changepassword";
    }

    @RequestMapping("/toUserInfo")
    public String toUserInfo() {
        return "user/userInfo";
    }

    @RequestMapping("vaccine/toVaccine")
    public String toVaccine(){
        return "vaccine/vaccine";
    }

    @RequestMapping("xueyuan/toXueYuan")
    public String toXueYuan(){ return "xueyuan/xueyuan";}
}

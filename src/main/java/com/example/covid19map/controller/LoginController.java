package com.example.covid19map.controller;

import cn.hutool.captcha.CaptchaUtil;
import cn.hutool.captcha.LineCaptcha;
import com.example.covid19map.entity.User;
import com.example.covid19map.service.UserService;
import com.example.covid19map.vo.DataView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * @author Jun
 * @date 2022/11/1 12:57
 * @description LoginController
 */
@Controller
public class LoginController {

    @Autowired
    private UserService userService;



    @RequestMapping("/toLogin")
    public String toLogin(){
        return "login";
    }

    // 验证码逻辑
    @RequestMapping("/login/getCode")
    public void getCode(HttpServletResponse response, HttpSession session) throws IOException {
        // 验证码对象,长、宽、位数、干扰线条数
        LineCaptcha captcha = CaptchaUtil.createLineCaptcha(116, 36, 4, 10);
        // 放入到session
        session.setAttribute("code", captcha.getCode());
        // 输出验证码
        ServletOutputStream outputStream = response.getOutputStream();
        captcha.write(outputStream);
        // 关闭输出流
        outputStream.close();
    }

    // 登陆逻辑
    @RequestMapping("/login/login")
    @ResponseBody
    public DataView login(String username, String password, String code, HttpSession session){
        DataView dataView = new DataView();
        // 首先判断验证码
        String sessionCode = session.getAttribute("code").toString();
        if (code!=null && sessionCode.equals(code)) {
            // 登陆逻辑
            User user = userService.login(username, password);
            if (user!=null) {
                dataView.setCode(200);
                dataView.setMsg("登录成功！");
                // 放入session
                session.setAttribute("user", user);
                return dataView;
            } else {
              dataView.setCode(100);
              dataView.setMsg("用户名或密码错误，登录失败！");
              return dataView;
            }
        }
        dataView.setCode(100);
        dataView.setMsg("验证码错误，登录失败！");
        return dataView;
    }
}

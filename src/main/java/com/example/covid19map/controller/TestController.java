package com.example.covid19map.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Jun
 * @date 2022/11/16 20:57
 * @description TestController
 */
@Controller
public class TestController {

    @RequestMapping("test1")
    public String test1(int a, int b, Model model){
        int result = a+b;
        model.addAttribute("msg", "结果为："+result);
        return "hello";
    }

    @RequestMapping("test2/{a}/{b}")
    public String test2(@PathVariable("a") int a, @PathVariable("b") int b, Model model){
        int result = a+b;
        model.addAttribute("msg", "结果为："+result);
        return "hello";
    }
}

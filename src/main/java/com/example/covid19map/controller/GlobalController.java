package com.example.covid19map.controller;

import com.example.covid19map.entity.GlobalData;
import com.example.covid19map.service.GlobalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author Jun
 * @date 2022/10/16 19:26
 * @description GlobalController
 */
@RestController
public class GlobalController {

    @Autowired
    GlobalService globalService;

    @GetMapping("/queryGlobal")
    public List<GlobalData> queryGlobal(){
        List<GlobalData> list = globalService.list();
        return list;
    }
}

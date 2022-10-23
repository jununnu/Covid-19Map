package com.example.covid19map.controller;

import com.example.covid19map.service.IndexService;
import com.example.covid19map.vo.DataView;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author Jun
 * @date 2022/10/17 21:29
 * @description ChinaController
 */
@Controller
@RequestMapping("/china")
public class ChinaController {

    @Autowired
    private IndexService indexService;


}

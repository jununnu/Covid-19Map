package com.example.covid19map.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.covid19map.entity.HeSuan;
import com.example.covid19map.service.HeSuanService;
import com.example.covid19map.vo.DataView;
import com.example.covid19map.vo.HeSuanVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * @author Jun
 * @date 2022/11/14 20:29
 * @description HesuanController
 */
@RestController
public class HesuanController {

    @Autowired
    private HeSuanService heSuanService;


    @GetMapping("/hesuan/loadAllHeSuan")
    public DataView loadAllHeSuan(HeSuanVo heSuanVo){
        IPage<HeSuan> page = new Page<>(heSuanVo.getPage(), heSuanVo.getLimit());
        QueryWrapper<HeSuan> queryWrapper = new QueryWrapper<>();
        heSuanService.page(page, queryWrapper);
        return new DataView(page.getTotal(), page.getRecords());
    }

    @PostMapping("/hesuan/addHeSuan")
    public DataView addHeSuan(HeSuan heSuan){
        heSuanService.save(heSuan);
        DataView dataView = new DataView();
        dataView.setCode(200);
        dataView.setMsg("添加成功！");
        return dataView;
    }

    @PostMapping("/hesuan/updateHeSuan")
    public DataView updateHeSuan(HeSuan heSuan){
        heSuanService.updateById(heSuan);
        DataView dataView = new DataView();
        dataView.setCode(200);
        dataView.setMsg("修改成功！");
        return dataView;
    }

    @DeleteMapping("/hesuan/deleteHeSuan")
    public DataView deleteHeSuan(Integer id){
        heSuanService.removeById(id);
        DataView dataView = new DataView();
        dataView.setCode(200);
        dataView.setMsg("删除成功！");
        return dataView;
    }

}

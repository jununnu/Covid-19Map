package com.example.covid19map.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.covid19map.entity.HealthClock;
import com.example.covid19map.service.HealthClockService;
import com.example.covid19map.vo.DataView;
import com.example.covid19map.vo.HealthClockVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * @author Jun
 * @date 2022/10/26 18:51
 * @description HealthClockController
 */
@RestController
public class HealthClockController {

    @Autowired
    private HealthClockService healthClockService;

    //查询所有打卡记录，带有模糊查和分页
    @GetMapping("/listHealthClock")
    public DataView listHealthClock(HealthClockVo healthClockVo){
        IPage<HealthClock> page = new Page<>(healthClockVo.getPage(), healthClockVo.getLimit());
        QueryWrapper<HealthClock> queryWrapper = new QueryWrapper<>();
        queryWrapper.like(healthClockVo.getUsername() != null, "username", healthClockVo.getUsername());
        queryWrapper.eq(healthClockVo.getPhone() != null, "phone", healthClockVo.getPhone());
        healthClockService.page(page, queryWrapper);
        return new DataView(page.getTotal(), page.getRecords());
    }

    //添加健康打卡数据,有id修改，没id新增
    @PostMapping("/addHealthClock")
    public DataView addHealth(HealthClock healthClock){
        boolean b = healthClockService.saveOrUpdate(healthClock);
        DataView dataView = new DataView();
        if (b) {
            dataView.setCode(200);
            dataView.setMsg("添加成功！");
            return dataView;
        }
        dataView.setCode(100);
        dataView.setMsg("添加失败！");
        return dataView;
    }

    @PostMapping("/deleteHealthClockById")
    public DataView deleteHealth(HealthClock healthClock){
        boolean remove = healthClockService.removeById(healthClock.getId());
        DataView dataView = new DataView();
        if (remove) {
            dataView.setCode(200);
            dataView.setMsg("删除成功！");
            return dataView;
        }
        dataView.setCode(100);
        dataView.setMsg("删除失败！");
        return dataView;
    }
}

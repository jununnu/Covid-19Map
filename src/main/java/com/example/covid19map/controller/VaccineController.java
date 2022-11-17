package com.example.covid19map.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.covid19map.entity.HeSuan;
import com.example.covid19map.entity.Vaccine;
import com.example.covid19map.service.VaccineService;
import com.example.covid19map.vo.DataView;
import com.example.covid19map.vo.HeSuanVo;
import com.example.covid19map.vo.VaccineVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author Jun
 * @date 2022/11/14 21:42
 * @description VaccineController
 */
@RestController
public class VaccineController {
    @Autowired
    private VaccineService vaccineService;

    @RequestMapping("/vaccine/loadAllVaccine")
    public DataView loadAllVaccine(VaccineVo vaccineVo){
        IPage<Vaccine> page = new Page<>(vaccineVo.getPage(), vaccineVo.getLimit());
        QueryWrapper<Vaccine> queryWrapper = new QueryWrapper<>();
        vaccineService.page(page, queryWrapper);
        return new DataView(page.getTotal(), page.getRecords());
    }

    @RequestMapping("/vaccine/addVaccine")
    public DataView addVaccine(Vaccine vaccine){
        vaccineService.save(vaccine);
        DataView dataView = new DataView();
        dataView.setCode(200);
        dataView.setMsg("添加成功！");
        return dataView;
    }

    @RequestMapping("/vaccine/updateVaccine")
    public DataView updateVaccine(Vaccine vaccine){
        vaccineService.updateById(vaccine);
        DataView dataView = new DataView();
        dataView.setCode(200);
        dataView.setMsg("修改成功！");
        return dataView;
    }

    @RequestMapping("/vaccine/deleteVaccine")
    public DataView deleteVaccine(Integer id){
        vaccineService.removeById(id);
        DataView dataView = new DataView();
        dataView.setCode(200);
        dataView.setMsg("删除成功！");
        return dataView;
    }
}

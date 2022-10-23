package com.example.covid19map.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.covid19map.entity.NocvData;
import com.example.covid19map.service.IndexService;
import com.example.covid19map.vo.DataView;
import com.example.covid19map.vo.NocvDataVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author Jun
 * @date 2022/10/17 15:14
 * @description ChinaDataController
 */
@Controller
public class ChinaDataController {
    @Autowired
    private IndexService indexService;

    @RequestMapping("/toChinaManager")
    public String toChinaManager(){
        return "admin/chinadatamanager";
    }

    /*
    模糊查询，带有分页
     */
    @RequestMapping("/listDataByPage")
    @ResponseBody
    public DataView listDataByPage(NocvDataVo nocvDataVo){
        //创建分页的对象，当前页及限制大小
        IPage<NocvData> page = new Page<>(nocvDataVo.getPage(), nocvDataVo.getLimit());
        //创建模糊查询条件
        QueryWrapper<NocvData> queryWrapper = new QueryWrapper<>();
        queryWrapper.like(!(nocvDataVo.getName() == null), "name", nocvDataVo.getName());
        //value倒序排列
        queryWrapper.orderByDesc("value");
        //查询数据库
        indexService.page(page, queryWrapper);
        //返回数据封装
        DataView dataView = new DataView(page.getTotal(), page.getRecords());
        System.out.println(nocvDataVo.getPage()+"\t"+nocvDataVo.getLimit());
        System.out.println(page.getTotal()+"\t"+page.getRecords());
        return dataView;
    }

    @RequestMapping("/china/deleteById")
    @ResponseBody
    public DataView deleteById(Integer id){
        indexService.removeById(id);
        DataView dataView = new DataView();
        dataView.setCode(200);
        dataView.setMsg("Delete success!");
        return dataView;
    }
}

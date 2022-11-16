package com.example.covid19map.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.covid19map.entity.NocvNews;
import com.example.covid19map.entity.XueYuan;
import com.example.covid19map.service.XueYuanService;
import com.example.covid19map.vo.DataView;
import com.example.covid19map.vo.NocvNewsVo;
import com.example.covid19map.vo.XueYuanVo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.Date;

/**
 * @author Jun
 * @date 2022/11/13 16:59
 * @description XueYuanController
 */
@RestController
public class XueYuanController {
    @Autowired
    private XueYuanService xueYuanService;



    /**
     * 查询所有新闻
     * @param xueYuanVo
     * @return
     */
    @RequestMapping("/xueyuan/listXueYuan")
    public DataView listNews(XueYuanVo xueYuanVo){
        QueryWrapper<XueYuan> queryWrapper = new QueryWrapper<>();
        queryWrapper.like(StringUtils.isNotBlank(xueYuanVo.getName()), "title", xueYuanVo.getName());
        IPage<XueYuan> iPage = new Page<>(xueYuanVo.getPage(), xueYuanVo.getLimit());
        xueYuanService.page(iPage, queryWrapper);
        return new DataView(iPage.getTotal(), iPage.getRecords());
    }

    @RequestMapping("/xueyuan/addOrUpdateXueYuan")
    public DataView addOrUpdateNews(XueYuan xueYuan){
        xueYuanService.saveOrUpdate(xueYuan);
        DataView dataView = new DataView();
        dataView.setMsg("新增或者修改成功！");
        dataView.setCode(200);
        return dataView;
    }

    /**
     * 删除新闻
     */
    @RequestMapping("/xueyuan/deleteById")
    public DataView deleteById(Integer id){
        xueYuanService.removeById(id);
        DataView dataView = new DataView();
        dataView.setCode(200);
        dataView.setMsg("删除成功！");
        return dataView;
    }
}

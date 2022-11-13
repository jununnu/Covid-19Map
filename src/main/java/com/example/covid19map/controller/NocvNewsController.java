package com.example.covid19map.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.covid19map.entity.NocvNews;
import com.example.covid19map.service.NocvNewsService;
import com.example.covid19map.vo.DataView;
import com.example.covid19map.vo.NocvNewsVo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;

/**
 * @author Jun
 * @date 2022/11/13 15:54
 * @description NocvNewsController
 */
@Controller
@RequestMapping("/news")
public class NocvNewsController {
    @Autowired
    private NocvNewsService nocvNewsService;

    @RequestMapping("/toNews")
    public String toNews(){
        return "news/news";
    }

    /**
     * 查询所有新闻
     * @param nocvNewsVo
     * @return
     */
    @RequestMapping("/listNews")
    @ResponseBody
    public DataView listNews(NocvNewsVo nocvNewsVo){
        QueryWrapper<NocvNews> queryWrapper = new QueryWrapper<>();
        queryWrapper.like(StringUtils.isNotBlank(nocvNewsVo.getTitle()), "title", nocvNewsVo.getTitle());
        IPage<NocvNews> iPage = new Page<>(nocvNewsVo.getPage(), nocvNewsVo.getLimit());
        nocvNewsService.page(iPage, queryWrapper);
        return new DataView(iPage.getTotal(), iPage.getRecords());
    }

    @RequestMapping("/addOrUpdateNews")
    @ResponseBody
    public DataView addOrUpdateNews(NocvNews nocvNews){
        nocvNews.setCreateTime(new Date());
        nocvNewsService.saveOrUpdate(nocvNews);
        DataView dataView = new DataView();
        dataView.setMsg("新增或者修改成功！");
        dataView.setCode(200);
        return dataView;
    }

    /**
     * 删除新闻
     */
    @RequestMapping("/deleteById")
    public DataView deleteById(Integer id){
        nocvNewsService.removeById(id);
        DataView dataView = new DataView();
        dataView.setCode(200);
        dataView.setMsg("删除成功！");
        return dataView;
    }



}

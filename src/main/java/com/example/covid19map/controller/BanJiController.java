package com.example.covid19map.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.covid19map.entity.BanJi;
import com.example.covid19map.service.BanJiService;
import com.example.covid19map.vo.BanJiVo;
import com.example.covid19map.vo.DataView;
import org.apache.commons.lang3.StringUtils;
import org.apache.ibatis.annotations.Delete;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

/**
 * @author Jun
 * @date 2022/11/13 17:24
 * @description BanJiController
 */
@RestController
public class BanJiController {
    @Autowired
    private BanJiService banJiService;

    /**
     * 查询所有新闻
     * @param banJiVo
     * @return
     */
    @GetMapping("/banji/listBanJi")
    public DataView listBanJi(BanJiVo banJiVo){
        QueryWrapper<BanJi> queryWrapper = new QueryWrapper<>();
        queryWrapper.like(StringUtils.isNotBlank(banJiVo.getName()), "title", banJiVo.getName());
        IPage<BanJi> iPage = new Page<>(banJiVo.getPage(), banJiVo.getLimit());
        banJiService.page(iPage, queryWrapper);
        return new DataView(iPage.getTotal(), iPage.getRecords());
    }

    @PostMapping("/banji/addOrUpdateBanJi")
    public DataView addOrUpdateBanJi(BanJi banJi){
        banJiService.saveOrUpdate(banJi);
        DataView dataView = new DataView();
        dataView.setMsg("新增或者修改成功！");
        dataView.setCode(200);
        return dataView;
    }

    /**
     * 删除新闻
     */
    @DeleteMapping("/banji/deleteById/{id}")
    public DataView deleteById(@PathVariable("id") Integer id){
        banJiService.removeById(id);
        DataView dataView = new DataView();
        dataView.setCode(200);
        dataView.setMsg("删除成功！");
        return dataView;
    }
}

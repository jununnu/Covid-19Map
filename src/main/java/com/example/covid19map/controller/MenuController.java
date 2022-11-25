package com.example.covid19map.controller;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.example.covid19map.entity.Menu;
import com.example.covid19map.entity.User;
import com.example.covid19map.service.MenuService;
import com.example.covid19map.service.RoleService;
import com.example.covid19map.util.TreeNode;
import com.example.covid19map.util.TreeNodeBuilder;
import com.example.covid19map.vo.DataView;
import com.example.covid19map.vo.MenuVo;
import org.apache.commons.lang3.StringUtils;
import org.apache.poi.ss.formula.functions.T;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import javax.xml.crypto.Data;
import java.util.*;

/**
 * @author Jun
 * @date 2022/11/2 17:18
 * @description MenuController
 */
@RestController
//@RequestMapping("/menu")
public class MenuController {

    @Autowired
    private MenuService menuService;

    @Autowired
    private RoleService roleService;



    // 加载所有的菜单
    @GetMapping("/menu/loadAllMenu")
    public DataView loadAllMenu(MenuVo menuVo){
        IPage<Menu> page = new Page<>(menuVo.getPage(), menuVo.getLimit());
        QueryWrapper<Menu> queryWrapper = new QueryWrapper<>();
        queryWrapper.like(StringUtils.isNotBlank(menuVo.getTitle()), "title", menuVo.getTitle());
        queryWrapper.orderByAsc("ordernum");
        menuService.page(page);
        return new DataView(page.getTotal(), page.getRecords());
    }

    // 加载下来菜单数据和左侧dtree
    @RequestMapping("/menu/loadMenuManagerLeftTreeJson")
    public DataView loadMenuManagerLeftTreeJson(){
        List<Menu> list = menuService.list();
        List<TreeNode> treeNodes = new ArrayList<>();
        for (Menu menu : list) {
            Boolean open = menu.getOpen() == 1?true:false;
            treeNodes.add(new TreeNode(menu.getId(), menu.getPid(), menu.getTitle(), open));
        }
        return new DataView(treeNodes);
    }

    // 赋值最大的排序吗+1; 条件查询：倒序排序，只取一条数据再加1
    @RequestMapping("/menu/loadMenuMaxOrderNum")
    public Map<String, Object> loadMenuMaxOrderNum(){
        Map<String, Object> map = new HashMap<>();
        QueryWrapper<Menu> queryWrapper = new QueryWrapper<>();
        queryWrapper.orderByDesc("ordernum");
        //页数，条数
        IPage<Menu> page = new Page<>(1, 1);
        List<Menu> list = menuService.page(page, queryWrapper).getRecords();
        map.put("value", list.get(0).getOrdernum()+1);
        return map;
    }

    // 新增菜单
    @RequestMapping("/menu/addMenu")
    public DataView addMenu(Menu menu){
        DataView dataView = new DataView();
        menu.setType("menu");
        boolean save = menuService.save(menu);
        if (!save) {
            dataView.setCode(100);
            dataView.setMsg("数据插入失败！");
            return dataView;
        }
        dataView.setCode(200);
        dataView.setMsg("数据插入成功！");
        return dataView;
    }

    // 更新菜单
    @RequestMapping("/menu/updateMenu")
    public DataView updateMenu(Menu menu){
        menuService.updateById(menu);
        DataView dataView = new DataView();
        dataView.setCode(200);
        dataView.setMsg("更新菜单成功！");
        return dataView;
    }

    // 删除信息前提，判断有没有子节点
    @RequestMapping("/menu/checkMenuHasChildrenNode")
    public Map<String, Object> checkChildrenNode(Menu menu){
        Map<String, Object> map = new HashMap<>();
        QueryWrapper<Menu> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("pid", menu.getPid());
        List<Menu> list = menuService.list(queryWrapper);
        if (list.size()>0) {
            map.put("value", "true");
        }else{
            map.put("value", "false");
        }
        return map;
    }

    // 删除信息
    @RequestMapping("/menu/deleteMenu")
    public DataView deleteMenu(Menu menu){
        menuService.removeById(menu.getId());
        DataView dataView = new DataView();
        dataView.setCode(200);
        dataView.setMsg("删除菜单成功！");
        return dataView;
    }

    // 首页左侧层级展示
    @RequestMapping("/menu/loadIndexLeftMenuJson")
    public DataView loadIndexLeftMenuJson(Menu menu){
        List<Menu> list = menuService.list();
        List<TreeNode> treeNodes = new ArrayList<>();
        for (Menu m : list) {
            Integer id = m.getId();
            Integer pid = m.getPid();
            String title = m.getTitle();
            String icon = m.getIcon();
            String href = m.getHref();
            boolean open = m.getOpen().equals(1) ? true : false;
            treeNodes.add(new TreeNode(id, pid, title, icon, href, open));
        }
        List<TreeNode> nodeList = TreeNodeBuilder.build(treeNodes, 0);
        return new DataView(nodeList);
    }


}

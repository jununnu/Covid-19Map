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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import javax.xml.crypto.Data;
import java.util.*;

/**
 * @author Jun
 * @date 2022/11/2 17:18
 * @description MenuController
 */
@Controller
@RequestMapping("/menu")
public class MenuController {

    @Autowired
    private MenuService menuService;

    @Autowired
    private RoleService roleService;

    @RequestMapping("/toMenu")
    private String toMenu(){
        return "/menu/menu";
    }

    // 加载所有的菜单
    @RequestMapping("/loadAllMenu")
    @ResponseBody
    public DataView loadAllMenu(MenuVo menuVo){
        IPage<Menu> page = new Page<>(menuVo.getPage(), menuVo.getLimit());
        QueryWrapper<Menu> queryWrapper = new QueryWrapper<>();
        queryWrapper.like(StringUtils.isNotBlank(menuVo.getTitle()), "title", menuVo.getTitle());
        queryWrapper.orderByAsc("ordernum");
        menuService.page(page);
        return new DataView(page.getTotal(), page.getRecords());
    }

    // 加载下来菜单数据和左侧dtree
    @RequestMapping("/loadMenuManagerLeftTreeJson")
    @ResponseBody
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
    @RequestMapping("/loadMenuMaxOrderNum")
    @ResponseBody
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
    @RequestMapping("/addMenu")
    @ResponseBody
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
    @RequestMapping("/updateMenu")
    @ResponseBody
    public DataView updateMenu(Menu menu){
        menuService.updateById(menu);
        DataView dataView = new DataView();
        dataView.setCode(200);
        dataView.setMsg("更新菜单成功！");
        return dataView;
    }

    // 删除信息前提，判断有没有子节点
    @RequestMapping("/checkMenuHasChildrenNode")
    @ResponseBody
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
    @RequestMapping("/deleteMenu")
    @ResponseBody
    public DataView deleteMenu(Menu menu){
        menuService.removeById(menu.getId());
        DataView dataView = new DataView();
        dataView.setCode(200);
        dataView.setMsg("删除菜单成功！");
        return dataView;
    }

    // 首页左侧层级展示
    @RequestMapping("/loadIndexLeftMenuJson")
    @ResponseBody
    public DataView loadIndexLeftMenuJson(HttpSession session){
        // 查询所有菜单栏
        List<Menu> list = null;
        QueryWrapper<Menu> queryWrapper = new QueryWrapper<>();

        // 按照条件查询
        User user = (User) session.getAttribute("user");
        Integer userId = user.getId();

        // 根据用户id查询角色
        List<Integer> currentUserRoleIds = roleService.queryUserRoleById(userId);

        // 根据角色查询菜单权限
        Set<Integer> mids = new HashSet<>();
        for (Integer rid : currentUserRoleIds) {
            // 根据角色id查询菜单id
            List<Integer> permissionIds = roleService.queryAllPermissionByRid(rid);
            // 菜单栏id和角色id去重
            mids.addAll(permissionIds);
        }

        // 根据角色id查询菜单
        if (mids.size()>0) {
            queryWrapper.in("id", mids);
            list = menuService.list(queryWrapper);
        }
        // 构造层级关系
        List<TreeNode> treeNodes = new ArrayList<>();
        for (Menu menu1 : list) {
            Integer id = menu1.getId();
            Integer pid = menu1.getPid();
            String title = menu1.getTitle();
            String icon = menu1.getIcon();
            String href = menu1.getHref();
            Boolean open = menu1.getOpen().equals(1)?true:false;
            treeNodes.add(new TreeNode(id, pid, title, icon, href, open));
        }
        // 构造层级关系, 原先构造的treeNodes是没有层级关系的，单纯是个数组，需要用build构造成层级关系
        List<TreeNode> nodeList = TreeNodeBuilder.build(treeNodes, 0);
        return new DataView(nodeList);
    }


}

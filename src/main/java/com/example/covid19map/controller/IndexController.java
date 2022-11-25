package com.example.covid19map.controller;

import com.alibaba.fastjson.JSONObject;
import com.example.covid19map.entity.*;
import com.example.covid19map.service.ChinaTotalService;
import com.example.covid19map.service.GlobalService;
import com.example.covid19map.service.IndexService;
import com.example.covid19map.service.NocvNewsService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import redis.clients.jedis.Jedis;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * @author Jun
 * @date 2022/10/12 17:55
 * @description IndexController
 */
@Controller
public class IndexController {

    @Autowired
    IndexService indexService;
    @Autowired
    GlobalService globalService;
    @Autowired
    private ChinaTotalService chinaTotalService;
    @Autowired
    private NocvNewsService nocvNewsService;


    @RequestMapping("/toChina")
    public String toChina(Model model) throws ParseException {
        //第一版
//        // 通过id倒序查询日期
//        QueryWrapper<ChinaTotal> queryWrapper = new QueryWrapper<>();
//        // Date函数带毫秒值，所以要改格式
//        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
//        Date date = format.parse(String.valueOf(new Date()));
//        queryWrapper.eq("update_time", date);
//        queryWrapper.orderByDesc("id");
//
//        List<ChinaTotal> list = chinaTotalService.list(queryWrapper);
//        ChinaTotal chinaTotal = list.get(0);
        // 找到ID最大的一条数据
        //第二版-----------------------------------------------------------------------
        Integer id = chinaTotalService.maxID();
        // MySQL根据ID进行数据查找
//        ChinaTotal chinaTotal = chinaTotalService.getById(id);
//        model.addAttribute("chinaTotal", chinaTotal);
        // redis查询数据库逻辑
        // 查询redis缓存，有数据则直接返回；没有数据则查询MySQL数据库，更新缓存，返回客户端

        Jedis jedis = new Jedis("47.92.84.39", 6379);
        jedis.auth("123456");
        // 拿到客户端链接
        if (jedis!=null) {
            String confirm = jedis.get("confirm");
            String input = jedis.get("input");
            String heal = jedis.get("heal");
            String dead = jedis.get("dead");
            String updateTime = jedis.get("updateTime");
            // 缓存里面有数据
            if (StringUtils.isNotBlank(confirm)
                    && StringUtils.isNotBlank(input)
                    && StringUtils.isNotBlank(heal)
                    && StringUtils.isNotBlank(dead)
                    && StringUtils.isNotBlank(updateTime)
            ){
                ChinaTotal chinaTotalRedis = new ChinaTotal();
                chinaTotalRedis.setConfirm(Integer.parseInt(confirm));
                chinaTotalRedis.setInput(Integer.parseInt(input));
                chinaTotalRedis.setHeal(Integer.parseInt(heal));
                chinaTotalRedis.setDead(Integer.parseInt(dead));

                //时间格式调整string->date，因为redis都是string格式
//                SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//                Date date = format.parse(updateTime);
                chinaTotalRedis.setUpdateTime(new Date());
//                System.out.println("redis data:"+chinaTotalRedis);
                // 返回前台数据
                model.addAttribute("chinaTotal", chinaTotalRedis);
                List<NocvNews> newsList = nocvNewsService.listNewsLimit3();
                model.addAttribute("newsList", newsList);
                return "china";
            }else{
                ChinaTotal chinaTotal = chinaTotalService.getById(id);
                model.addAttribute("chinaTotal", chinaTotal);
                // 疫情播报新闻
                List<NocvNews> newsList = nocvNewsService.listNewsLimit3();
                model.addAttribute("newsList", newsList);

                // 更新缓存
                jedis.set("confirm", String.valueOf(chinaTotal.getConfirm()));
                jedis.set("input", String.valueOf(chinaTotal.getInput()));
                jedis.set("heal", String.valueOf(chinaTotal.getHeal()));
                jedis.set("dead", String.valueOf(chinaTotal.getDead()));
                jedis.set("updateTime", String.valueOf(chinaTotal.getUpdateTime()));

                return "china";
            }
        }
        ChinaTotal chinaTotal = chinaTotalService.getById(id);
        model.addAttribute("chinaTotal", chinaTotal);
        // 疫情播报新闻
        List<NocvNews> newsList = nocvNewsService.listNewsLimit3();
        model.addAttribute("newsList", newsList);
        return "china";
    }

    @RequestMapping("/")
    public String index(Model model) throws ParseException{
        Integer id = chinaTotalService.maxID();
        ChinaTotal chinaTotal = chinaTotalService.getById(id);
        model.addAttribute("chinaTotal", chinaTotal);
        return "index";
    }
    //    @RequestMapping("/index")
//    public String index(){
//        return "index";
//    }
    @RequestMapping("/query")
    @ResponseBody
    public List<NocvData> queryData() throws ParseException {
//        // 查询当天业务逻辑
//        QueryWrapper<NocvData> queryWrapper = new QueryWrapper<>();
//        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
//        String format1 = format.format(new Date());
//        // 大于当天时间
//        queryWrapper.ge("update_time", format.parse(format1));
//        List<NocvData> nocvData = indexService.list(queryWrapper);


        // 先查redis缓存，有数据就返回
        Jedis jedis = new Jedis("47.92.84.39", 6379);
        jedis.auth("123456");
        if (jedis!=null) {
            // 34个省份
            List<String> listRedis = jedis.lrange("nocvdata", 0, 33);

            List<NocvData> dataList = new ArrayList<>();

            if (listRedis.size()>0) {
                for (int i=0; i<listRedis.size(); i++){
//                    System.out.println("列表项为："+listRedis.get(i));
                    String s = listRedis.get(i);
                    JSONObject jsonObject = JSONObject.parseObject(s);
                    Object name = jsonObject.get("name");
                    Object value = jsonObject.get("value");
                    NocvData nocvData = new NocvData();
                    nocvData.setName(String.valueOf(name));
                    nocvData.setValue(Integer.parseInt(value.toString()));
                    dataList.add(nocvData);
                }
                // 返回redis数据
                return dataList;
            }else{
                // redis没有数据，查MySQL数据库，更新缓存
                List<NocvData> list = indexService.listOrderByIdLimit34();
                for (NocvData nocvData : list) {
                    jedis.lpush("nocvdata", JSONObject.toJSONString(nocvData));
                }
                // 查询MySQL数据
                return list;
            }
        }

        List<NocvData> nocvData = indexService.listOrderByIdLimit34();
        // 默认没有链接redis的返回
        return nocvData;
    }

    @RequestMapping("/toPie")
    public String toPie(){
        return "pie";
    }

    @RequestMapping("/queryPie")
    @ResponseBody
    public List<NocvData> queryDataPie(){
        List<NocvData> list = indexService.listOrderByIdLimit34();
        System.out.println(list);
        return list;
    }

    @RequestMapping("/toBar")
    public String toBar(){
        return "bar";
    }
    
    @RequestMapping("/queryBar")
    @ResponseBody
//    因为需要分x和y坐标数据，一个list不行，就用map； 第一个String是map的键名，第二个是map的值，用Obj可以写两种
    public Map<String, List<Object>> queryDataBar(){
//        所有城市数据：数值
        List<NocvData> list = indexService.listOrderByIdLimit34();
//        所有城市数据
        List<String> cityList = new ArrayList<>();
        for (NocvData data : list) {
            cityList.add(data.getName());
        }
//        所有数值
        List<Integer> noList = new ArrayList<>();
        for (NocvData data : list) {
            noList.add(data.getValue());
        }
        Map map = new HashMap();
        map.put("cityList", cityList);
        map.put("noList", noList);
//        System.out.println(map);
        System.out.println(map);
        return map;
    }

    @RequestMapping("/toLine")
    public String toLine(){
        return "line";
    }

    @RequestMapping("/queryLine")
    @ResponseBody
    public Map<String, List<Object>> queryLineData(){
//        查询近7天所有的数据
       List<LineTrend> lineTrends = indexService.findWeekData();
        //       封装所有相关症状人数
        List<Integer> confirmList = new ArrayList<>();
        List<Integer> isolationList = new ArrayList<>();
        List<Integer> cureList = new ArrayList<>();
        List<Integer> deadList = new ArrayList<>();
        List<Integer> similarList = new ArrayList<>();
        for (LineTrend data : lineTrends) {
            confirmList.add(data.getConfirm());
            isolationList.add(data.getIsolation());
            cureList.add(data.getCure());
            deadList.add(data.getDead());
            similarList.add(data.getSimilar());
        }
        Map map = new HashMap<>();
        map.put("confirmList", confirmList);
        map.put("isolationList", isolationList);
        map.put("cureList", cureList);
        map.put("deadList", deadList);
        map.put("similarList", similarList);
        System.out.println(map);
        return map;
    }

//    @RequestMapping("/global")
//    public String global(){
//        return "global";
//    }

//    @RequestMapping("/queryGlobal")
//    @ResponseBody
//    public Map<String, List<Object>> queryDataGlobal(){
//        Map map = new HashMap<>();
//        List<GlobalData> list = globalService.list();
//        List<Integer> confirmList = new ArrayList<>();
//        List<String> cityList = new ArrayList<>();
//        for (GlobalData data : list) {
//            confirmList.add(data.getValue());
//            cityList.add(data.getName());
//        }
//        map.put("confirmList", confirmList);
//        map.put("cityList", cityList);
//        return map;
//    }
//    @RequestMapping("/queryGlobal")
//    @ResponseBody
//    public List<GlobalData> queryGlobal(){
//        List<GlobalData> list = globalService.list();
//        return list;
//    }
}

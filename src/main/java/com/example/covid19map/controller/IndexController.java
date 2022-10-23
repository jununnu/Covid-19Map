package com.example.covid19map.controller;

import com.example.covid19map.entity.GlobalData;
import com.example.covid19map.entity.LineTrend;
import com.example.covid19map.entity.NocvData;
import com.example.covid19map.service.GlobalService;
import com.example.covid19map.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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

    @RequestMapping("/index")
    public String index(){
        return "index";
    }

    @RequestMapping("/query")
    @ResponseBody
    public List<NocvData> queryData(){
        List<NocvData> nocvData = indexService.list();
        System.out.println(nocvData);
        return nocvData;
    }

    @RequestMapping("/toPie")
    public String toPie(){
        return "pie";
    }

    @RequestMapping("/queryPie")
    @ResponseBody
    public List<NocvData> queryDataPie(){
        List<NocvData> list = indexService.list();
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
        List<NocvData> list = indexService.list();
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

package com.example.covid19map.netapi;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.example.covid19map.entity.ChinaTotal;
import com.example.covid19map.entity.NocvData;
import com.example.covid19map.service.ChinaTotalService;
import com.example.covid19map.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import redis.clients.jedis.Jedis;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author Jun
 * @date 2022/10/27 11:05
 * @description TestApi
 */
@Component
public class ChinaTotalScheduleTask {

    @Autowired
    private ChinaTotalService chinaTotalService;

    @Autowired
    private IndexService indexService;

    //每十秒执行一次
//    @Scheduled(fixedDelay = 10000)
    //每天12点执行一次，更新全国疫情数据情况
    //秒 分 时 日 月 周
    @Scheduled(cron = "0 0 6,12,18 * * ?")
    //https://www.cnblogs.com/dubhlinn/p/10740838.html
    public void updateChinaTotalToDB() throws IOException, ParseException {
        HttpUtils httpUtils = new HttpUtils();
        String string = httpUtils.getData();
//        System.out.println("原始数据：" + string);

        //所有数据的Alibaba格式
        JSONObject jsonObject = JSONObject.parseObject(string);
        Object data = jsonObject.get("data");
//        System.out.println("data:"+data);

        // data
        JSONObject jsonObjectData = JSONObject.parseObject(data.toString());
        Object chinaTotal = jsonObjectData.get("chinaTotal");
        // 获取更新数据时间
        Object lastUpdateTime = jsonObjectData.get("overseaLastUpdateTime");
//        System.out.println("chinaTotal:"+chinaTotal);

        // total全中国整体疫情数据
        JSONObject jsonObjectTotal = JSONObject.parseObject(chinaTotal.toString());
        Object total = jsonObjectTotal.get("total");
//        System.out.println("total:"+total);

        // 全国数据total
        JSONObject totalData = JSONObject.parseObject(total.toString());
        Object confirm = totalData.get("confirm");
        Object input = totalData.get("input");
        Object severe = totalData.get("severe");
        Object heal = totalData.get("heal");
        Object dead = totalData.get("dead");
        Object suspect = totalData.get("suspect");

        // 为程序实体赋值
        ChinaTotal dataEntity = new ChinaTotal();
        dataEntity.setConfirm((Integer) confirm);
        dataEntity.setInput((Integer) input);
        dataEntity.setSevere((Integer) severe);
        dataEntity.setHeal((Integer) heal);
        dataEntity.setDead((Integer) dead);
        dataEntity.setSuspect((Integer) suspect);
        // 更改日期格式
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        dataEntity.setUpdateTime(format.parse(String.valueOf(lastUpdateTime)));

        //插入数据库
        chinaTotalService.save(dataEntity);

        // 删除缓存！ MySQL --- redis
        Jedis jedis = new Jedis("127.0.0.1");
        if (jedis!=null) {
            jedis.flushDB();
        }


        // 中国各个省份数据实时刷新
        JSONArray areaTree = jsonObjectData.getJSONArray("areaTree");
        Object[] objects = areaTree.toArray();
        // 遍历所有国家的数据
//        for (int i = 0; i < objects.length; i++) {
//            JSONObject jsonObject1 = JSONObject.parseObject(objects[i].toString());
//            Object name = jsonObject1.get("name");
//            System.out.println(name);
//        }
        
        // 拿到中国数据
        JSONObject jsonObject1 = JSONObject.parseObject(objects[2].toString());
        JSONArray children = jsonObject1.getJSONArray("children");
        // 各个省份
        Object[] objects1 = children.toArray();
        List<NocvData> list = new ArrayList<>();

        for (int i = 0; i < objects1.length; i++) {
            NocvData nocvData = new NocvData();

            JSONObject jsonObject2 = JSONObject.parseObject(objects1[i].toString());
            // 省份名字
            Object name = jsonObject2.get("name");
            // 省份更新数据时间
            Object timePro = jsonObject2.get("lastUpdateTime");
            // total
            Object total1 = jsonObject2.get("total");
            JSONObject jsonObject3 = JSONObject.parseObject(total1.toString());

            // 确诊数量
            Object confirm1 = jsonObject3.get("confirm");
            //System.out.println("省份--"+name+"："+confirm1+"人");

            // 获取累计死亡人数，治愈数据
            Object heal1 = jsonObject3.get("heal");
            Object dead1 = jsonObject3.get("dead");

            // 现存确诊
            Integer nowConfirm = Integer.parseInt(confirm1.toString())-Integer.parseInt(heal1.toString())- Integer.parseInt(dead1.toString());

            // 赋值
            nocvData.setName(name.toString());
            nocvData.setValue(nowConfirm);
            // 调整时间类型
            SimpleDateFormat format1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
            if (timePro==null) {
                nocvData.setUpdateTime(new Date());
            } else{
                nocvData.setUpdateTime(format1.parse(String.valueOf(timePro)));
            }
            // 插入数据,累计确诊
//            nocvData.setName(name.toString());
//            nocvData.setValue(Integer.parseInt(confirm1.toString()));
            list.add(nocvData);
        }
        // 各个省份的数据插入数据库
        indexService.saveBatch(list);
    }
}

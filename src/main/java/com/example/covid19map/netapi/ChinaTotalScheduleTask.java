package com.example.covid19map.netapi;

import com.alibaba.fastjson.JSONObject;
import com.example.covid19map.entity.ChinaTotal;
import com.example.covid19map.service.ChinaTotalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author Jun
 * @date 2022/10/27 11:05
 * @description TestApi
 */
@Component
public class ChinaTotalScheduleTask {

    @Autowired
    private ChinaTotalService chinaTotalService;

    //每十秒执行一次
    //@Scheduled(fixedDelay = 10000)
    //每天12点执行一次，更新全国疫情数据情况
    //秒 分 时 日 月 周
    @Scheduled(cron = "0 0 12 * * ?")
    //https://www.cnblogs.com/dubhlinn/p/10740838.html
    public void updateChinaTotalToDB() throws IOException, ParseException {
        HttpUtils httpUtils = new HttpUtils();
        String string = httpUtils.getData();
        System.out.println("原始数据：" + string);

        //所有数据的Alibaba格式
        JSONObject jsonObject = JSONObject.parseObject(string);
        Object data = jsonObject.get("data");
        System.out.println("data:"+data);

        // data
        JSONObject jsonObjectData = JSONObject.parseObject(data.toString());
        Object chinaTotal = jsonObjectData.get("chinaTotal");
        // 获取更新数据时间
        Object lastUpdateTime = jsonObjectData.get("overseaLastUpdateTime");
        System.out.println("chinaTotal:"+chinaTotal);

        // total全中国整体疫情数据
        JSONObject jsonObjectTotal = JSONObject.parseObject(chinaTotal.toString());
        Object total = jsonObjectTotal.get("total");
        System.out.println("total:"+total);

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
    }
}

package com.example.covid19map.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

/**
 * @author Jun
 * @date 2022/10/26 18:46
 * @description HealthClock
 */
@TableName("health_clock")
@Data
public class HealthClock {
    @TableId(value="id", type= IdType.AUTO)
    private Integer id;
    private String username;
    private String sex;
    private Integer age;
    private String phone;
    private String morningTemp;
    private String afternoonTemp;
    private String nightTemp;
    private String feverAndCough;
    private String recentHome;
    private String riskZone;
    private String recentZone;
    private String healthStatus;
    private Date createTime;
}

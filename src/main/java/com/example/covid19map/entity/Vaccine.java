package com.example.covid19map.entity;

import java.util.Date;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @author Jun
 * @date 2022/11/14 21:35
 * @description Vaccine
 */
@Data
@TableName("vaccine")
public class Vaccine {
    private Integer id;

    private String name;

    private Integer age;

    private String phone;

    private String card;

    private String zhenci;

    private String pici;

    private String changjia;

    private String danwei;

    private Date createTime;
}
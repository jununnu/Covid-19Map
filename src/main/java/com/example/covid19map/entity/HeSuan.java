package com.example.covid19map.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.Data;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

/**
 * @author Jun
 * @date 2022/11/14 20:24
 * @description hesuan
 */
@TableName("hesuan")
@Data
public class HeSuan {
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    private String name;
    private String age;
    private String phone;
    private String card;

    // 混检 单检
    private String type;
    // 核酸结果
    private String result;

    //核酸检测时间
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Date createTime;

    //报告出来时间
    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Date updateTime;
}

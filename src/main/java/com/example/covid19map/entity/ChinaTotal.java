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
 * @date 2022/10/30 19:44
 * @description ChinaTotal
 */
@TableName("china_total")
@Data
public class ChinaTotal {
    @TableId(value="id", type = IdType.AUTO)
    private Integer id;
//    确诊
    private Integer confirm;
    private Integer input;
    private Integer severe;
    private Integer heal;
    private Integer dead;
    private Integer suspect;

    @DateTimeFormat(pattern = "yyyy-MM-dd HH:mm:ss")
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Date updateTime;

}

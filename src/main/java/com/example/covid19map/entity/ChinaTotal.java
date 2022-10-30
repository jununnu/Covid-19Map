package com.example.covid19map.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

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
    private Date updateTime;

}

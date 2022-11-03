package com.example.covid19map.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import javax.swing.*;

/**
 * @author Jun
 * @date 2022/11/2 11:42
 * @description Menu
 */

// 数据库表必备属性，id,create_time,update_time

@TableName("menu")
@Data
public class Menu {
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    private Integer pid;
    private String type;
    private String title;
    private String permission;
    private String icon;
    private String href;
    private Integer open;
    private Integer ordernum;
    private Integer available;
}

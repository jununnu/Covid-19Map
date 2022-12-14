package com.example.covid19map.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @author Jun
 * @date 2022/11/1 12:59
 * @description User
 */
@TableName("user")
@Data
public class User {
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    private String username;
    private String password;
    // 盐，数据库不能明文存储
    private String salt;

    private String sex;
    private Integer age;
    private String address;
    private String img;
    private String phone;
    private String card;

    //作为外键使用
    private Integer banJiId;
    private Integer xueYuanId;
    private Integer teacherId;

    // 非数据库列 班级名字，学院名字，老师名字
    @TableField(exist = false)
    private String banJiName;

    @TableField(exist = false)
    private String xueYuanName;

    @TableField(exist = false)
    private String teacherName;

}

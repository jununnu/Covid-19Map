package com.example.covid19map.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @author Jun
 * @date 2022/11/2 11:58
 * @description BanJi
 */
@TableName("ban_ji")
@Data
public class BanJi {
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    private String name;
    //外键，驼峰
    private Integer xueYuanId;
}

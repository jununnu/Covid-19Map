package com.example.covid19map.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @author Jun
 * @date 2022/11/2 12:00
 * @description XueYuan
 */
@TableName("xue_yuan")
@Data
public class XueYuan {
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    private String name;
}
package com.example.covid19map.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @author Jun
 * @date 2022/11/2 11:55
 * @description Role
 */
@Data
@TableName("role")
public class Role {
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    private String name;
    private String remark;

}

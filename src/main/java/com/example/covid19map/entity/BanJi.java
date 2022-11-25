package com.example.covid19map.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author Jun
 * @date 2022/11/2 11:58
 * @description BanJi
 */
@TableName("ban_ji")
@Data
//@Api("班级")
public class BanJi {
    @TableId(value = "id", type = IdType.AUTO)
//    @ApiModelProperty("班级id")
    private Integer id;
//    @ApiModelProperty("班级名称")
    private String name;
    //外键，驼峰
//    @ApiModelProperty("学院id")
    private Integer xueYuanId;
}

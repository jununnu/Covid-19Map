package com.example.covid19map.entity;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @author Jun
 * @date 2022/10/12 17:58
 * @description NocvData
 */
@Data
@TableName("nocv_data")
public class NocvData {
    private Integer id;
    private String name;
    private Integer value;
}

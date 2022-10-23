package com.example.covid19map.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @author Jun
 * @date 2022/10/15 21:00
 * @description GlobalData
 */
@Data
@TableName("nocv_global_data")
public class GlobalData {
    private Integer id;
    private String name;
    private Integer value;
}


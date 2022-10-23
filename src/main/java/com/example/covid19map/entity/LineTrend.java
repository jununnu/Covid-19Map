package com.example.covid19map.entity;

import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

/**
 * @author Jun
 * @date 2022/10/13 20:27
 * @description LineTrend
 */
@TableName("line_trend")
@Data
public class LineTrend {
    private Integer id;
    private Integer confirm;
    private Integer isolation;
    private Integer cure;
    private Integer similar;
    private Integer dead;
    private Date createTime;
}

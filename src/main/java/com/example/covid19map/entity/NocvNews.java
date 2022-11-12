package com.example.covid19map.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

import java.util.Date;

/**
 * @author Jun
 * @date 2022/11/12 20:59
 * @description NocvNews
 */
@Data
@TableName("nocv_news")
public class NocvNews {
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    private String title;
    private String content;
    private String publishby;
    private Date createTime;
}

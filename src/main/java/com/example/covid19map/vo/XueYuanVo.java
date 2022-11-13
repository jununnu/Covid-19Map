package com.example.covid19map.vo;

import com.example.covid19map.entity.XueYuan;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * @author Jun
 * @date 2022/11/13 16:37
 * @description XueYuanVo
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class XueYuanVo extends XueYuan {
    private Integer limit;
    private Integer page;
}

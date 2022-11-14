package com.example.covid19map.vo;

import com.example.covid19map.entity.HeSuan;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * @author Jun
 * @date 2022/11/14 20:42
 * @description HeSuanVo
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class HeSuanVo extends HeSuan {
    private Integer limit;
    private Integer page;
}

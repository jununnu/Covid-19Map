package com.example.covid19map.vo;

import com.example.covid19map.entity.BanJi;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * @author Jun
 * @date 2022/11/13 17:26
 * @description BanJiVo
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class BanJiVo extends BanJi {
    private Integer limit;
    private Integer page;
}

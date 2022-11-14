package com.example.covid19map.vo;

import com.example.covid19map.entity.Vaccine;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * @author Jun
 * @date 2022/11/14 21:41
 * @description VaccineVo
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class VaccineVo extends Vaccine {
    private Integer limit;
    private Integer page;
}

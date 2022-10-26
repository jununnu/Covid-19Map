package com.example.covid19map.vo;

import com.example.covid19map.entity.HealthClock;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * @author Jun
 * @date 2022/10/26 19:38
 * @description HealthClockVo
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class HealthClockVo extends HealthClock {
    private Integer page;
    private Integer limit;
}

package com.example.covid19map.vo;

import com.example.covid19map.entity.NocvNews;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * @author Jun
 * @date 2022/11/13 16:43
 * @description NocvNewsVo
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class NocvNewsVo extends NocvNews {
    private Integer page;
    private Integer limit;
}

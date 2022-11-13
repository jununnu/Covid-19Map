package com.example.covid19map.vo;

import com.example.covid19map.entity.NocvData;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * @author Jun
 * @date 2022/10/17 15:30
 * @description NocvDataVo
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class NocvDataVo extends NocvData {
    private Integer page;
    private Integer limit;
}

package com.example.covid19map.vo;

import com.example.covid19map.entity.Menu;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author Jun
 * @date 2022/11/2 20:04
 * @description MenuVo
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class MenuVo extends Menu {
    private Integer page;
    private Integer limit;

}

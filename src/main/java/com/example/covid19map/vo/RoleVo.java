package com.example.covid19map.vo;

import com.example.covid19map.entity.Role;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * @author Jun
 * @date 2022/11/6 17:14
 * @description RoleVo
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class RoleVo extends Role {
    private Integer page;
    private Integer limit;
}

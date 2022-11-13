package com.example.covid19map.vo;

import com.example.covid19map.entity.User;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * @author Jun
 * @date 2022/11/10 13:57
 * @description UserVo
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
@EqualsAndHashCode(callSuper = false)
public class UserVo extends User {
    private Integer limit;
    private Integer page;
}

package com.example.covid19map.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @author Jun
 * @date 2022/11/2 11:56
 * @description RoleMenu
 */
@Data
@TableName("role_menu")
public class RoleMenu {
    // 角色id
    private Integer rid;
    // 菜单id
    private Integer mid;

}

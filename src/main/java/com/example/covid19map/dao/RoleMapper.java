package com.example.covid19map.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.covid19map.entity.Role;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * @author Jun
 * @date 2022/11/6 17:24
 * @description RoleMapper
 */

@Mapper
public interface RoleMapper extends BaseMapper<Role> {
    @Select("SELECT mid FROM role_menu WHERE rid = #{roleId}")
    List<Integer> queryMidByRid(Integer roleId);

    @Delete("DELETE FROM role_menu WHERE rid = #{rid}")
    void deleteRoleByRid(Integer rid);

    @Insert("INSERT INTO role_menu(rid, mid) values (#{rid}, #{mid})")
    void saveRoleMenu(@Param("rid") Integer rid, @Param("mid") Integer mid);
}

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

    // 分配菜单栏之前删除所欲rid数据
    @Delete("DELETE FROM role_menu WHERE rid = #{rid}")
    void deleteRoleByRid(Integer rid);

    // 保存分配角色与菜单的关系
    @Insert("INSERT INTO role_menu(rid, mid) values (#{rid}, #{mid})")
    void saveRoleMenu(@Param("rid") Integer rid, @Param("mid") Integer mid);

    // 根据用户id查询所有的角色
    @Select("SELECT rid FROM user_role WHERE uid = #{id}")
    List<Integer> queryUserRoleById(Integer id);

    // 先删除之前的用户与角色关系
    @Delete("DELETE FROM user_role WHERE uid = #{uid}")
    void deleteRoleUserByUid(Integer uid);

    // 保存分配的用户与角色之间的关系
    @Insert("INSERT INTO user_role(uid,rid) VALUES(#{uid}, #{rid})")
    void saveUserRole(@Param("uid") Integer uid,@Param("rid") Integer rid);
}

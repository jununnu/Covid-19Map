package com.example.covid19map.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.covid19map.entity.ChinaTotal;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

/**
 * @author Jun
 * @date 2022/10/30 20:10
 * @description ChinaTotalMapper
 */
@Mapper
public interface ChinaTotalMapper extends BaseMapper<ChinaTotal> {
    @Select("SELECT MAX(id) FROM china_total")
    Integer maxID();
}

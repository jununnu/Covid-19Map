package com.example.covid19map.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.covid19map.entity.LineTrend;
import com.example.covid19map.entity.NocvData;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @author Jun
 * @date 2022/10/12 17:57
 * @description IndexMapper
 */
@Mapper
public interface IndexMapper extends BaseMapper<NocvData> {
    /**
     *
     * 接口：只有方法定义，写业务逻辑
     * 1.实现类，写业务逻辑
     * 2.xml mybatisplus实现
     * 3.@Select
     */
    @Select("select * from line_trend order by create_time desc limit 7")
    List<LineTrend> findWeekData();
}

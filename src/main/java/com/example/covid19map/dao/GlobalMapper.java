package com.example.covid19map.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.covid19map.entity.GlobalData;
import org.apache.ibatis.annotations.Mapper;

/**
 * @author Jun
 * @date 2022/10/15 21:19
 * @description GlobalMapper
 */
@Mapper
public interface GlobalMapper extends BaseMapper<GlobalData> {

}

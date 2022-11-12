package com.example.covid19map.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.covid19map.entity.NocvNews;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * @author Jun
 * @date 2022/11/12 21:03
 * @description NocvNewsMapper
 */
public interface NocvNewsMapper extends BaseMapper<NocvNews> {
    @Select("SELECT * FROM nocv_news ORDER BY create_time DESC LIMIT 5")
    List<NocvNews> listNewsLimit5();
}

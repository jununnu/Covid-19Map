package com.example.covid19map.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.covid19map.entity.ChinaTotal;
import org.apache.ibatis.annotations.Select;


/**
 * @author Jun
 * @date 2022/10/30 20:11
 * @description ChinaTotalService
 */

public interface ChinaTotalService extends IService<ChinaTotal> {

    Integer maxID();
}

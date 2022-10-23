package com.example.covid19map.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.covid19map.entity.LineTrend;
import com.example.covid19map.entity.NocvData;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Jun
 * @date 2022/10/12 17:56
 * @description IndexService
 */

public interface IndexService extends IService<NocvData> {

    List<LineTrend> findWeekData();
}

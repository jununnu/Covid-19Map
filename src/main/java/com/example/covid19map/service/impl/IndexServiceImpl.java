package com.example.covid19map.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.covid19map.dao.IndexMapper;
import com.example.covid19map.entity.GlobalData;
import com.example.covid19map.entity.LineTrend;
import com.example.covid19map.entity.NocvData;
import com.example.covid19map.service.IndexService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * @author Jun
 * @date 2022/10/12 17:57
 * @description IndexService
 */
@Service
public class IndexServiceImpl extends ServiceImpl<IndexMapper, NocvData> implements IndexService {

    @Autowired
    private IndexMapper indexMapper;

    @Override
    public List<LineTrend> findWeekData() {
        List<LineTrend> list = indexMapper.findWeekData();
        return list;
    }

    @Override
    public List<NocvData> listOrderByIdLimit34() {
        return indexMapper.listOrderByIdLimit34();
    }
}

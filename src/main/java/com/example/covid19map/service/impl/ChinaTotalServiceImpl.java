package com.example.covid19map.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.covid19map.dao.ChinaTotalMapper;
import com.example.covid19map.entity.ChinaTotal;
import com.example.covid19map.service.ChinaTotalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Jun
 * @date 2022/10/30 20:12
 * @description ChinaTotalServiceImpl
 */
@Service
public class ChinaTotalServiceImpl extends ServiceImpl<ChinaTotalMapper, ChinaTotal> implements ChinaTotalService {
    @Autowired
    private ChinaTotalMapper chinaTotalMapper;
    @Override
    public Integer maxID() {
        return chinaTotalMapper.maxID();
    }
}

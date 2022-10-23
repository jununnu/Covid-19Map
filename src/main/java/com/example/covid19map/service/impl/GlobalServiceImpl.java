package com.example.covid19map.service.impl;

import com.baomidou.mybatisplus.extension.service.IService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.covid19map.dao.GlobalMapper;
import com.example.covid19map.entity.GlobalData;
import com.example.covid19map.service.GlobalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author Jun
 * @date 2022/10/15 21:20
 * @description GlobalServiceImpl
 */
@Service
public class GlobalServiceImpl extends ServiceImpl<GlobalMapper, GlobalData> implements GlobalService {
    @Autowired
    private GlobalMapper globalMapper;

}

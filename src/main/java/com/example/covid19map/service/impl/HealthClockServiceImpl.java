package com.example.covid19map.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.covid19map.dao.HealthClockMapper;
import com.example.covid19map.entity.HealthClock;
import com.example.covid19map.service.HealthClockService;
import org.springframework.stereotype.Service;

/**
 * @author Jun
 * @date 2022/10/26 19:29
 * @description HealthClockServiceImpl
 */
@Service
public class HealthClockServiceImpl extends ServiceImpl<HealthClockMapper, HealthClock> implements HealthClockService {
}

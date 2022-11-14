package com.example.covid19map.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.covid19map.dao.VaccineMapper;
import com.example.covid19map.entity.Vaccine;
import com.example.covid19map.service.VaccineService;
import org.springframework.stereotype.Service;

/**
 * @author Jun
 * @date 2022/11/14 21:40
 * @description VaccineServiceImpl
 */
@Service
public class VaccineServiceImpl extends ServiceImpl<VaccineMapper, Vaccine> implements VaccineService {
}

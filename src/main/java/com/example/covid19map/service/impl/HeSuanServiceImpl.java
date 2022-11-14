package com.example.covid19map.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.covid19map.dao.HeSuanMapper;
import com.example.covid19map.entity.HeSuan;
import com.example.covid19map.service.HeSuanService;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Service;

/**
 * @author Jun
 * @date 2022/11/14 20:35
 * @description HeSuanServiceImpl
 */
@Service
public class HeSuanServiceImpl extends ServiceImpl<HeSuanMapper, HeSuan> implements HeSuanService {

}

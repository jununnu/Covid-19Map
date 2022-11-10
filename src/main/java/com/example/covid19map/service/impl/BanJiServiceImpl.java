package com.example.covid19map.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.covid19map.dao.BanJiMapper;
import com.example.covid19map.entity.BanJi;
import com.example.covid19map.service.BanJiService;
import org.springframework.stereotype.Service;

/**
 * @author Jun
 * @date 2022/11/10 20:43
 * @description BanJiServiceImpl
 */
@Service
public class BanJiServiceImpl extends ServiceImpl<BanJiMapper, BanJi> implements BanJiService {
}

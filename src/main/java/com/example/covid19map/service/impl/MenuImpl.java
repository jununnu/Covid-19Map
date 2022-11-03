package com.example.covid19map.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.covid19map.dao.MenuMapper;
import com.example.covid19map.entity.Menu;
import com.example.covid19map.service.MenuService;
import org.springframework.stereotype.Service;

/**
 * @author Jun
 * @date 2022/11/2 17:27
 * @description MenuImpl
 */
@Service
public class MenuImpl extends ServiceImpl<MenuMapper, Menu> implements MenuService {
}

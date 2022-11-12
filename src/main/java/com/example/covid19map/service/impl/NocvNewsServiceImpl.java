package com.example.covid19map.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.covid19map.dao.NocvNewsMapper;
import com.example.covid19map.entity.NocvNews;
import com.example.covid19map.service.NocvNewsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author Jun
 * @date 2022/11/12 21:02
 * @description NocvNewsServiceImpl
 */
@Service
public class NocvNewsServiceImpl extends ServiceImpl<NocvNewsMapper, NocvNews> implements NocvNewsService {
    @Autowired
    private NocvNewsMapper nocvNewsMapper;
    @Override
    public List<NocvNews> listNewsLimit5() {
        return nocvNewsMapper.listNewsLimit5();
    }
}

package com.example.covid19map.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.example.covid19map.entity.NocvNews;

import java.util.List;

/**
 * @author Jun
 * @date 2022/11/12 21:02
 * @description NocvNewsService
 */
public interface NocvNewsService extends IService<NocvNews> {
    List<NocvNews> listNewsLimit5();
}

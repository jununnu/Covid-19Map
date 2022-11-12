package com.example.covid19map;

import com.example.covid19map.service.RoleService;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;
import java.util.Map;

@SpringBootTest
class Covid19MapApplicationTests {

    @Autowired
    RoleService roleService;
    @Test
    void contextLoads() {
        List<Map<String, Object>> maps = roleService.listMaps();
        System.out.println(maps);
    }

}

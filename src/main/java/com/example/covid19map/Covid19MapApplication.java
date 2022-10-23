package com.example.covid19map;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
@MapperScan("com.example.covid19map.dao")
@SpringBootApplication
public class Covid19MapApplication {

    public static void main(String[] args) {
        SpringApplication.run(Covid19MapApplication.class, args);
    }

}

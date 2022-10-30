package com.example.covid19map;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@MapperScan("com.example.covid19map.dao")
@SpringBootApplication
@EnableScheduling
public class Covid19MapApplication {

    public static void main(String[] args) {
        SpringApplication.run(Covid19MapApplication.class, args);
    }

}

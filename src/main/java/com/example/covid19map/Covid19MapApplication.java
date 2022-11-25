package com.example.covid19map;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.mongo.MongoAutoConfiguration;
import org.springframework.scheduling.annotation.EnableScheduling;
import springfox.documentation.swagger2.annotations.EnableSwagger2WebMvc;

@MapperScan("com.example.covid19map.dao")
@EnableScheduling
@SpringBootApplication(exclude = MongoAutoConfiguration.class)
public class Covid19MapApplication {

    public static void main(String[] args) {
        SpringApplication.run(Covid19MapApplication.class, args);
    }

}

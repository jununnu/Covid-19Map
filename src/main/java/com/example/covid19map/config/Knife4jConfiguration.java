package com.example.covid19map.config;

import com.github.xiaoymin.knife4j.spring.annotations.EnableKnife4j;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.bind.annotation.RestController;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.oas.annotations.EnableOpenApi;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Contact;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;
import springfox.documentation.swagger2.annotations.EnableSwagger2WebMvc;


/**
 * @author Jun
 * @date 2022/11/19 20:39
 * @description SwaggerConfig
 */

@Configuration
@EnableSwagger2
@EnableOpenApi
@EnableKnife4j
public class Knife4jConfiguration {

    @Bean
    public Docket defaultApi() {
        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(groupApiInfo())
                .groupName("默认接口")
                .select()
//                .apis(RequestHandlerSelectors.basePackage("com.xiaominfo.knife4j.controller"))
                .apis(RequestHandlerSelectors.withMethodAnnotation(RestController.class))
                .paths(PathSelectors.any())
                .build();
    }


    private ApiInfo groupApiInfo(){
        return new ApiInfoBuilder()
                .title("swagger-bootstrap-ui很棒~~~！！！")
                .description("swagger-bootstrap-ui-demo RESTful APIs")
                .termsOfServiceUrl("http://www.group.com/")
                .version("1.0")
                .build();
    }
}
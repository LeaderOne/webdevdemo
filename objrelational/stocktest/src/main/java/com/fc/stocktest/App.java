package com.fc.stocktest;

import javax.servlet.MultipartConfigElement;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.EnableAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.context.embedded.MultiPartConfigFactory;
import org.springframework.boot.context.web.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.multipart.commons.CommonsMultipartResolver;

@Configuration
@EnableAutoConfiguration
@ComponentScan
public class App extends SpringBootServletInitializer {
	
	@Override
    protected SpringApplicationBuilder configure(
            final SpringApplicationBuilder application) {
        return application
                .sources(App.class);
    }

    public static void main(String[] args) {
        SpringApplication.run(App.class, args);
    }
    
    @Bean
    MultipartConfigElement multipartConfigElement() {
        MultiPartConfigFactory factory = new MultiPartConfigFactory();
        factory.setMaxFileSize("10240KB");
        factory.setMaxRequestSize("10240KB");
        return factory.createMultipartConfig();
    }

    @Bean
    CommonsMultipartResolver multipartResolver(){
        return new CommonsMultipartResolver();
    }

}
package com.crudproject.crudbackend.api;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication(scanBasePackages = "com.crudproject.crudbackend")
public class CruDbackendApplication {

    public static void main(String[] args) {
        SpringApplication.run(CruDbackendApplication.class, args);
    }

}

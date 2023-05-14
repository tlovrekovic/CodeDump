package com.tlovrekovic.SpringBootExample.controller;

//RESTAPI(RESPONSEBODY)

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloController {
    @GetMapping("/")
    public String helloworld(){
        return "Test Stringaa";
    }
}

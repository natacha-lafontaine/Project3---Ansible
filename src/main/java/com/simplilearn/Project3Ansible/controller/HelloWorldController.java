package com.simplilearn.Project3Ansible.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldController {
    @GetMapping("/bookzy")
    public String HelloWorld(){
        return "Hello Welcome to Bookzy!";
    }    
}

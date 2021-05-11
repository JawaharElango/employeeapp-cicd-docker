package com.learning.jawahar.employee.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EmployeeAppController {

    @GetMapping("/hello")
    public String sayHello(){
        return "hello";
    }

    @GetMapping("/hello/{message}")
    public String sayHelloWithMessage(@PathVariable String message){
        return "Hello "+ message;
    }


    @GetMapping("/hello/{message}/{name}")
    public String sayHelloWithMessageAndName(@PathVariable String message, @PathVariable String name){
        return "Hello "+ message + " "+ name;

    }
}

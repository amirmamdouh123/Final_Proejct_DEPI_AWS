package com.example.demo.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("ok")
public class MyController {

    @GetMapping
    public String works(){
        return "Hello from Java Spring Application...";
    }

}

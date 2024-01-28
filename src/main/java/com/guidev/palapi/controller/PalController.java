package com.guidev.palapi.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PalController {
    @GetMapping("/pals")
    public String getPals(){
        return "hello Pals!";
    }
}

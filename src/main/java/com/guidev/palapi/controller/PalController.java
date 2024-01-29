package com.guidev.palapi.controller;

import com.guidev.palapi.entity.PalEntity;
import com.guidev.palapi.service.PalService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/pals-info")
@AllArgsConstructor
public class PalController {

    private PalService palService;
    @GetMapping("/pals")
    public List<PalEntity> getPals(){
        return palService.getAllPals();
    }
}

package com.guidev.palapi.service;

import com.guidev.palapi.entity.PalEntity;
import com.guidev.palapi.repository.PalRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;
import java.util.List;

@Service
@AllArgsConstructor
public class PalService {
    private PalRepository palRepository;

    public List<PalEntity> getAllPals(){
        return palRepository.findAll();
    }
}

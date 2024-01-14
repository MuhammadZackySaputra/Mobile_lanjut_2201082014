/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.uas.warnet.service;

import com.uas.warnet.entity.Warnet;
import com.uas.warnet.repository.WarnetRepository;
import java.util.List;
import java.util.Optional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author TUF GAMING
 */
@Service
public class WarnetService {
    private final WarnetRepository warnetRepository;
    
    @Autowired
    public WarnetService (WarnetRepository warnetRepository) {
        this.warnetRepository = warnetRepository;
    }
    
    public List <Warnet> getAllWarnet() {
        return warnetRepository.findAll();
    }
    
    public Warnet getWarnetById(long id){
        return warnetRepository.findById(id).get();
    }
    
    public Warnet getWarnet(Long idwarnet){
        return warnetRepository.findById(idwarnet).get();
    }
    
    public void insertWarnet (Warnet warnet) {
        Optional <Warnet> warnetOptional = warnetRepository.findWarnetByKodePelanggan(warnet.getKodePelanggan());
        if(warnetOptional.isPresent()) {
            throw new IllegalStateException("Email sudah ada");
        }
        warnetRepository.save(warnet);
    }



    
}

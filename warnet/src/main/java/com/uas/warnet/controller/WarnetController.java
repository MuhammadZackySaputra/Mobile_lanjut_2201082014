/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.uas.warnet.controller;

import com.uas.warnet.entity.Warnet;
import com.uas.warnet.service.WarnetService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 *
 * @author TUF GAMING
 */
@RestController
@RequestMapping("api/v1/warnet")

public class WarnetController {
    private final WarnetService warnetService;
    
    @Autowired
    public WarnetController(WarnetService warnetService) {
        this.warnetService = warnetService;
    }
    
    @GetMapping
    public List <Warnet> getAllWarnet() {
        return warnetService.getAllWarnet();
    }
    
    @GetMapping(path = "[id]")
    public Warnet getWarnetById(@PathVariable("id") Long id){
        return warnetService.getWarnetById(id);
    }
    
     @PostMapping
    public void insertWarnet (@RequestBody Warnet warnet) {
        warnetService.insertWarnet(warnet);
    }
}
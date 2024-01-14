/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package com.zacky.matakuliah.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.zacky.matakuliah.entity.Matakuliah;
/**
 *
 * @author TUF GAMING
 */
@Repository
public interface MatakuliahRepository extends JpaRepository<Matakuliah , Long> {
    
}
/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.uas.warnet.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import java.time.LocalDate;

/**
 *
 * @author TUF GAMING
 */
@Entity
@Table
public class Warnet {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String kodePelanggan;
    private String jenis;
    private int lama;
    private String tarif;
    private int bayar;
    
    public Warnet () {
        
    }

    public Warnet(Long id, String kodePelanggan, String jenis, int lama, String tarif, int bayar) {
        this.id = id;
        this.kodePelanggan = kodePelanggan;
        this.jenis = jenis;
        this.lama = lama;
        this.tarif = tarif;
        this.bayar = bayar;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getKodePelanggan() {
        return kodePelanggan;
    }

    public void setKodePelanggan(String kodePelanggan) {
        this.kodePelanggan = kodePelanggan;
    }

    public String getJenis() {
        return jenis;
    }

    public void setJenis(String jenis) {
        this.jenis = jenis;
    }

    public int getLama() {
        return lama;
    }

    public void setLama(int lama) {
        this.lama = lama;
    }

    public String getTarif() {
        return tarif;
    }

    public void setTarif(String tarif) {
        this.tarif = tarif;
    }

    public int getBayar() {
        return bayar;
    }

    public void setBayar(int bayar) {
        this.bayar = bayar;
    }

    @Override
    public String toString() {
        return "Warnet{" + "id=" + id + ", kodePelanggan=" + kodePelanggan + ", jenis=" + jenis + ", lama=" + lama + ", tarif=" + tarif + ", bayar=" + bayar + '}';
    }

    
    
    
}


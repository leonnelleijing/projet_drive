/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

/**
 *
 * @author 33667
 */
@Entity
@SuppressWarnings("PersistenceUnitPresent")
@Table(name = "Creneau")
public class Creneau {
    
    //Propriétés
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column (name = "CodeCreneau")
    
    private int code;
    private String horaire;
    
    //Relations
    //Pas besoin de relations, par exemple, on ne va pas chercher
    
    //Constructeurs
    public Creneau(){}

    public Creneau(String horaire) {
        this.horaire = horaire;
    }
    
    //Getters & Setters
    
    public int getCode() {return code;}

    public String getHoraire() {return horaire;}

    public void setCode(int code) {this.code = code;}

    public void setHoraire(String horaire) {this.horaire = horaire;}
    
    // HashCode & Equals

    @Override
    public int hashCode() {
        int hash = 5;
        hash = 97 * hash + this.code;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Creneau other = (Creneau) obj;
        if (this.code != other.code) {
            return false;
        }
        return true;
    }
    
    
    
}
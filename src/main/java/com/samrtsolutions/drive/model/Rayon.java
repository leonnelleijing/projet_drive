/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.model;

import com.samrtsolutions.drive.model.Family;
import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author leonl
 */
@Entity
@Table(name="drive_rayon")
public class Rayon implements Serializable{
    private int numRayon; 
    private String libelleRayon; 
    private Set<Family> families= new HashSet(); 
    public Rayon() {
    }

    public Rayon(String libelleRayon) {
        this.libelleRayon = libelleRayon;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getNumRayon() {
        return numRayon;
    }

    public String getLibelleRayon() {
        return libelleRayon;
    }
    
    @OneToMany(mappedBy ="rayon", cascade=CascadeType.ALL)
    public Set<Family> getFamilies() {
        return families;
    }

    public void setFamilies(Set<Family> families) {
        this.families = families;
    }

    public void setNumRayon(int numRayon) {
        this.numRayon = numRayon;
    }

    public void setLibelleRayon(String libelleRayon) {
        this.libelleRayon = libelleRayon;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 17 * hash + this.numRayon;
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
        final Rayon other = (Rayon) obj;
        if (this.numRayon != other.numRayon) {
            return false;
        }
        return true;
    }
    
}

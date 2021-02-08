/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapKeyColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;



/**
 *
 * @author leonl
 */
@Entity
@Table (name="drive_famille")
public class Family implements Serializable{
    private int numFamily; 
    private String nomFamily; 
    private Rayon rayon; 
    private Family parentFamily; 
    private Set<Family> childFamilies = new HashSet(); 
    public Family() {
    }
 
    public Family(String nomFamily, Rayon rayon) {
        this.nomFamily = nomFamily;
        this.rayon = rayon;
    }
    
    @Id 
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getNumFamily() {
        return numFamily;
    }
    
    public String getNomFamily() {
        return nomFamily;
    }

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="NumRayon")
    public Rayon getRayon() {
        return rayon;
    }

    @OneToMany(mappedBy ="parentFamily", cascade=CascadeType.ALL, fetch = FetchType.EAGER)
    @MapKeyColumn(name="ParentCategoryId")
    public Set<Family> getChildFamilies() {
        return childFamilies;
    }

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="ParentCategoryId")
    public Family getParentFamily() {
        return parentFamily;
    }

    public void setParentFamily(Family parentFamily) {
        this.parentFamily = parentFamily;
    }

    
    public void setChildFamilies(Set<Family> childFamilies) {
        this.childFamilies = childFamilies;
    }

    public void setRayon(Rayon rayon) {
        this.rayon = rayon;
    }

    public void setNumFamily(int numFamily) {
        this.numFamily = numFamily;
    }

    public void setNomFamily(String nomFamily) {
        this.nomFamily = nomFamily;
    }

    @Override
    public String toString() {
        return "Family{" + "numFamily=" + numFamily + ", nomFamily=" + nomFamily + ", rayon=" + rayon + ", parentFamily=" + parentFamily + '}';
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 43 * hash + this.numFamily;
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
        final Family other = (Family) obj;
        if (this.numFamily != other.numFamily) {
            return false;
        }
        return true;
    }

    

}

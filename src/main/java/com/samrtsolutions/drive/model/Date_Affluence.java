/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
/**
 *
 * @author Helmy
 */
@Entity
@SuppressWarnings("PersistenceUnitPresent")
@Table(name = "Date_Affluence")
public class Date_Affluence implements Serializable {
    
    //Propriété
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column (name = "CodeDate")
    int codeDate;
    
    @Column (name = "Date_Affluence")
    String date;
    
    //Relations
    
    
    //Constructeurs
    
    public Date_Affluence(){}

    public Date_Affluence(String date) {
        this.date = date;
    }
    
    //Getters & Setters

    public int getCodeDate() {
        return codeDate;
    }

    public void setCodeDate(int codeDate) {
        this.codeDate = codeDate;
    }
    
    public String getDate() {return date;}

    public void setDate(String date) {this.date = date;}
    
    

    //HashCode & Equals
    @Override
    public int hashCode() {
        int hash = 3;
        hash = 89 * hash + Objects.hashCode(this.date);
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
        final Date_Affluence other = (Date_Affluence) obj;
        if (!Objects.equals(this.date, other.date)) {
            return false;
        }
        return true;
    }
    
    
    
    
    
    
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.model;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
/**
 *
 * @author 33667
 */
@Entity
@SuppressWarnings("PersistenceUnitPresent")
@Table(name = "Date_Affluence")
public class Date_Affluence {
    
    //Propriété
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column (name = "Date_Aff")
    @Temporal(javax.persistence.TemporalType.DATE)
    Date date;
    
    //Relations
    //Aucune car idem que pour Créneau
    
    //Constructeurs
    
    public Date_Affluence(){}

    public Date_Affluence(Date date) {
        this.date = date;
    }
    
    //Getters & Setters

    public Date getDate() {return date;}

    public void setDate(Date date) {this.date = date;}

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

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

/**
 *
 * @author 33667
 */
@Entity
@SuppressWarnings("PersistenceUnitPresent")
@Table(name = "Magasin")
public class Magasin implements Serializable{
    
    //Propriétés
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column (name = "CodeMagasin")
    
    private int code;
    private String nom;
    private String rue;
    private String codePostal;
    private String ville;
    
    // Relations
    // Un magasin possède une liste de créneaux, et une liste de dates pour chaque créneau (Map<Dates, Créneau>)
    @ManyToMany (mappedBy = "magasins", fetch = FetchType.EAGER)
    private ArrayList<Creneau> listeCreneau = new ArrayList(0);
    
    @ManyToMany (mappedBy = "magasins", fetch = FetchType.EAGER)
    private Map<Date_Affluence, Creneau> listeDateAffluence = new HashMap(0);
    
    //Constructor
    public Magasin(){}

    public Magasin(String nom, String rue, String codePostal, String ville) {
        this.nom = nom;
        this.rue = rue;
        this.codePostal = codePostal;
        this.ville = ville;
    }
    
    //Getters & Setters

    public ArrayList<Creneau> getListeCreneau() {
        return listeCreneau;
    }

    public void setListeCreneau(ArrayList<Creneau> listeCreneau) {
        this.listeCreneau = listeCreneau;
    }

    public Map<Date_Affluence, Creneau> getListeDateAffluence() {
        return listeDateAffluence;
    }

    public void setListeDateAffluence(Map<Date_Affluence, Creneau> listeDateAffluence) {
        this.listeDateAffluence = listeDateAffluence;
    }
    
    
    public int getCode() {
        return code;
    }

    public String getNom() {
        return nom;
    }

    public String getRue() {
        return rue;
    }

    public String getCodePostal() {
        return codePostal;
    }

    public String getVille() {
        return ville;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setRue(String rue) {
        this.rue = rue;
    }

    public void setCodePostal(String codePostal) {
        this.codePostal = codePostal;
    }

    public void setVille(String ville) {
        this.ville = ville;
    }

    //HasCode & Equals

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 23 * hash + this.code;
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
        final Magasin other = (Magasin) obj;
        if (this.code != other.code) {
            return false;
        }
        return true;
    }
    
    
    
    
    
    
    


}

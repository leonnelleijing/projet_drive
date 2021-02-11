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
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author 33667
 */
@Entity
@SuppressWarnings("PersistenceUnitPresent")
@Table(name = "drive_creneau")
public class Creneau implements Serializable {
    
    //Propriétés
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column (name = "CodeCreneau")

    private int code;
    private String horaire;
    @OneToMany(mappedBy="creneauRetrait")
    private Set<Commande> commandes=new HashSet<>(0);
    
    //Relations
    // Relie Creneau à Magasin
    @ManyToMany
	@JoinTable(name = "drive_appartenir_creneauMagasin",
			   joinColumns = @JoinColumn(name = "CodeCreneau"),
		inverseJoinColumns = @JoinColumn(name = "CodeMagasin"))
                private Set<Magasin> listeMagasins = new HashSet(0);
    
    //Constructeurs
    public Creneau(){}

    public Creneau(String horaire) {
        this.horaire = horaire;
    }
    
    public Set<Commande> getCommandes() {return commandes;}

    //Getters & Setters
    public void setCommandes(Set<Commande> commandes) {
        this.commandes = commandes;
    }

    public int getCode() {
        return code;
    }


    public String getHoraire() {return horaire;}

    public void setCode(int code) {this.code = code;}

    public void setHoraire(String horaire) {this.horaire = horaire;}

    public Set<Magasin> getListeMagasins() {return listeMagasins;}

    public void setListeMagasins(Set<Magasin> listeMagasins) {this.listeMagasins = listeMagasins;}
    
    
    
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

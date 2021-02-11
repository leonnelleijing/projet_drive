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
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author leonl
 */
@Entity
@Table(name="drive_etat_commande")
public class EtatCommande implements Serializable {
    private int idEtat;
    private String libelleEtat;
    private Set<Commande> commandes= new HashSet<>(0);

    public EtatCommande() {
    }

    public EtatCommande( String libelleEtat){
        this.libelleEtat = libelleEtat;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getIdEtat() {
        return idEtat;
    }

    @OneToMany(mappedBy="etat",cascade=CascadeType.ALL, fetch = FetchType.EAGER)
    public Set<Commande> getCommandes() {
        return commandes;
    }

    public void setCommandes(Set<Commande> commandes) {
        this.commandes = commandes;
    }

    public void setIdEtat(int idEtat) {
        this.idEtat = idEtat;
    }

    public String getLibelleEtat() {
        return libelleEtat;
    }

    public void setLibelleEtat(String libelleEtat) {
        this.libelleEtat = libelleEtat;
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 29 * hash + this.idEtat;
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
        final EtatCommande other = (EtatCommande) obj;
        if (this.idEtat != other.idEtat) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "EtatCommande{" + "idEtat=" + idEtat + ", libelleEtat=" + libelleEtat + '}';
    }
    
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.model;

import java.util.Objects;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author 33667
 */
@Entity
@SuppressWarnings("PersistenceUnitPresent")
@Table(name = "Affluence")
public class Affluence {
    
    //Propriétés
    
    @EmbeddedId
    private AffluenceId id; //Clé primaire composite
    
    @Column (name = "Qte_Commande")
    private int qteCommande;
    
    // Relations
    //Une affluence correspond à un magasin, un créneau et une date
    @ManyToOne
    @JoinColumn (name = "CodeMagasin", insertable = false, updatable = false)
    private Magasin magasin;
    
    @ManyToOne
    @JoinColumn (name = "CodeCreneau", insertable = false, updatable = false)
    private Creneau creneau;
    
    @ManyToOne
    @JoinColumn (name = "Date_Affluence", insertable = false, updatable = false)
    private Date_Affluence date_affluence;
    
    //Constructeurs
    public Affluence (){}

    public Affluence (AffluenceId id, int qteCommande, Magasin magasin, Creneau creneau, Date_Affluence date_affluence) {
        this.id = id;
        this.qteCommande = qteCommande;
        this.magasin = magasin;
        this.creneau = creneau;
        this.date_affluence = date_affluence;
    }
    
    //Getters & Setters

    public AffluenceId getId() {return id;}

    public void setId(AffluenceId id) {this.id = id;}

    public int getQteCommande() {return qteCommande;}

    public void setQteCommande(int qteCommande) {this.qteCommande = qteCommande;}

    public Magasin getMagasin() {return magasin;}

    public void setMagasin(Magasin magasin) {this.magasin = magasin;}

    public Creneau getCreneau() {return creneau;}

    public void setCreneau(Creneau creneau) {this.creneau = creneau;}

    public Date_Affluence getDate_affluence() {return date_affluence;}

    public void setDate_affluence(Date_Affluence date_affluence) {this.date_affluence = date_affluence;}
    
    //HashCode & Equals

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 53 * hash + Objects.hashCode(this.id);
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
        final Affluence other = (Affluence) obj;
        if (!Objects.equals(this.id, other.id)) {
            return false;
        }
        return true;
    }
    
    
    
}

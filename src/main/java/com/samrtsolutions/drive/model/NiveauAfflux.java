/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.model;

import java.io.Serializable;
import java.util.Objects;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author Helmy
 */
@Entity
@SuppressWarnings("PersistenceUnitPresent")
@Table(name = "NiveauAfflux")
public class NiveauAfflux implements Serializable {
    //Propriétés
    
    @EmbeddedId
    private NiveauAffluxId id; //Clé primaire composite
    
    @Column (name = "NiveauAffluence")
    private String niveauAff;
    
    // Relations
    //Une affluence correspond à un magasin, un créneau et une date
    @ManyToOne
    @JoinColumn (name = "CodeMagasin", insertable = false, updatable = false)
    private Magasin magasin;
    
    @ManyToOne
    @JoinColumn (name = "CodeCreneau", insertable = false, updatable = false)
    private Creneau creneau;
    
    //Constructeurs
    public NiveauAfflux(){}

    public NiveauAfflux(NiveauAffluxId id, String niveauAff, Magasin magasin, Creneau creneau) {
        this.id = id;
        this.niveauAff = niveauAff;
        this.magasin = magasin;
        this.creneau = creneau;
    }
    
    //Getters & Setters

    public NiveauAffluxId getId() {return id;}

    public void setId(NiveauAffluxId id) {this.id = id;}

    public String getNiveauAff() {return niveauAff;}

    public void setNiveauAff(String niveauAff) {this.niveauAff = niveauAff;}

    public Magasin getMagasin() {return magasin;}

    public void setMagasin(Magasin magasin) {this.magasin = magasin;}

    public Creneau getCreneau() {return creneau;}

    public void setCreneau(Creneau creneau) {this.creneau = creneau;}
    
    //HashCode & Equals

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 79 * hash + Objects.hashCode(this.id);
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
        final NiveauAfflux other = (NiveauAfflux) obj;
        if (!Objects.equals(this.id, other.id)) {
            return false;
        }
        return true;
    }
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.model;

import java.io.Serializable;
import java.util.Date;
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
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;

/**
 *
 * @author leonl
 */
@Entity
@Table(name="drive_commande")
public class Commande implements Serializable {
    private int numCommande;
    private Client client; 
    private Set<LigneCommande> ligneCommandes= new HashSet<>();
    private Date commandeDate= new Date();
    private EtatCommande etat;
    private Magasin magasin; 
    private Creneau creneauRetrait;
    private Date dateRetraite;
    public Commande() {
    }

    public Commande(Client client, Magasin magasin, Creneau creneauRetrait) {
        this.client = client;
        this.magasin = magasin;
        this.creneauRetrait = creneauRetrait;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getNumCommande() {
        return numCommande;
    }
    

    @ManyToOne()
    @JoinColumn( name="idClient" )
    public Client getClient() {
        return client;
    }
    
    @Temporal(javax.persistence.TemporalType.TIMESTAMP)
    public Date getCommandeDate() {
        return commandeDate;
    }

    @OneToMany(mappedBy="commande",cascade=CascadeType.ALL, fetch = FetchType.EAGER)
    public Set<LigneCommande> getLigneCommandes() {
        return ligneCommandes;
    }

    @ManyToOne(targetEntity = EtatCommande.class)
    @JoinColumn( name="idEtat" )
    public EtatCommande getEtat() {
        return etat;
    }
    
    @ManyToOne(targetEntity=Creneau.class)
    @JoinColumn( name="idCreneau" )
    public Creneau getCreneauRetrait() {
        return creneauRetrait;
    }

    @ManyToOne(targetEntity = Magasin.class)
    @JoinColumn( name="idMagasin" )
    public Magasin getMagasin() {
        return magasin;
    }
    
    @Temporal(javax.persistence.TemporalType.DATE)
    public Date getDateRetraite() {
        return dateRetraite;
    }

    public void setCreneauRetrait(Creneau creneauRetrait) {
        this.creneauRetrait = creneauRetrait;
    }

    public void setMagasin(Magasin magasin) {
        this.magasin = magasin;
    }


    public void setEtat(EtatCommande etat) {
        this.etat = etat;
    }

    
    public void setCommandeDate(Date commandeDate) {
        this.commandeDate = commandeDate;
    }

    
    public void setNumCommande(int numCommande) {
        this.numCommande = numCommande;
    }


    public void setClient(Client client) {
        this.client = client;
    }

    public void setLigneCommandes(Set<LigneCommande> ligneCommandes) {
        this.ligneCommandes = ligneCommandes;
    }

    public void setDateRetraite(Date dateRetraite) {
        this.dateRetraite = dateRetraite;
    }



    @Override
    public int hashCode() {
        int hash = 5;
        hash = 41 * hash + this.numCommande;
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
        final Commande other = (Commande) obj;
        if (this.numCommande != other.numCommande) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "Commande{" + "commandeDate=" + commandeDate + ", etat=" + etat + ", magasin=" + magasin + '}';
    }

    
    
}

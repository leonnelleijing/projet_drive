/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.model;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author leonl
 */
@Entity
@Table(name="drive_ligne_commande")
public class LigneCommande implements Serializable{
    private int idLigne;
    private Commande commande; 
    private Product product; 
    private int quantity; 
    public LigneCommande() {
    }

    public LigneCommande(Commande commande, Product product, int quantity) {
        this.commande = commande;
        this.product = product;
        this.quantity = quantity;
    }


    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getIdLigne() {
        return idLigne;
    }


    public int getQuantity() {
        return quantity;
    }
    @ManyToOne(targetEntity = Commande.class,fetch = FetchType.EAGER)
    @JoinColumn(name = "numCommande")
    public Commande getCommande() {
        return commande;
    }    
   

    @ManyToOne(targetEntity = Product.class,fetch = FetchType.EAGER)
    @JoinColumn(name = "idProduct")
    public Product getProduct() {
        return product;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }


    public void setIdLigne(int idLigne) {
        this.idLigne = idLigne;
    }

    public void setCommande(Commande commande) {
        this.commande = commande;
    }

    public void setProduct(Product product) {
        this.product = product;
    }

  

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 17 * hash + this.idLigne;
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
        final LigneCommande other = (LigneCommande) obj;
        if (this.idLigne != other.idLigne) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "LigneCommande{" + "idLigne=" + idLigne + ", commande=" + commande + ", product=" + product + ", quantity=" + quantity + '}';
    }


    
    
}

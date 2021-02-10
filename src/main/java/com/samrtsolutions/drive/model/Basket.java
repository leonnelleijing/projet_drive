/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.model;

import com.samrtsolutions.drive.repository.BasketDaoImpl;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.persistence.CascadeType;
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
import javax.persistence.Temporal;

/**
 *
 * @author cheny
 */
@Entity
@Table(name = "drive_panier")
public class Basket implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idBasket;
    @Temporal(javax.persistence.TemporalType.DATE)
    private Date dateBasket;

    @ManyToMany(fetch = FetchType.EAGER) // 这里要用fetch eager
    @JoinTable(name = "drive_client_panier",
            joinColumns = @JoinColumn(name = "idBasket"),
            inverseJoinColumns = @JoinColumn(name = "CodeProduct"))
    private Set<Product> lstProduct = new HashSet();
    //private Client client;

    // Constructor
    public Basket() {
    }

    public Basket(Date dateBasket) {
        this.dateBasket = dateBasket;
    }

    // Getter & Setter
    public int getIdBasket() {
        return idBasket;
    }

    public void setIdBasket(int idBasket) {
        this.idBasket = idBasket;
    }

    public Date getDateBasket() {
        return dateBasket;
    }

    public void setDateBasket(Date dateBasket) {
        this.dateBasket = dateBasket;
    }

    public Set<Product> getLstProduct() {
        return lstProduct;
    }

    public void setLstProduct(Set<Product> lstProduct) {
        this.lstProduct = lstProduct;
    }

    // equals() & HashCode()
    @Override
    public int hashCode() {
        int hash = 7;
        hash = 23 * hash + this.idBasket;
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
        final Basket other = (Basket) obj;
        if (this.idBasket != other.idBasket) {
            return false;
        }
        return true;
    }

    // toString
    @Override
    public String toString() {
        return "Basket{" + "idBasket=" + idBasket + ", dateBasket=" + dateBasket + ", lstProduct=" + lstProduct + '}';
    }
    
    //Méthode
    public void addProductToBasket(Product p){
        this.getLstProduct().add(p);
    }
}

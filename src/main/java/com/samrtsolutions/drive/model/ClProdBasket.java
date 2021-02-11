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
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author cheny
 */
@Entity
@Table(name="drive_ligne_panier")
public class ClProdBasket implements Serializable{
    
    // Propriétés 
    @EmbeddedId
    private CliProdBasketId prodBasket;
    
    @Column(name = "QuantityProd")
    private int quantityProd;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "CodeProduct", insertable = false, updatable = false)
    private Product product;
    
    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "CodeBasket", insertable = false, updatable = false)
    private Basket basket;
 
    
    // Constructor

    public ClProdBasket() {
    }

    public ClProdBasket(CliProdBasketId prodBasket, int quantityProd) {
        this.prodBasket = prodBasket;
        this.quantityProd = quantityProd;
    }

    public ClProdBasket(int quantityProd, Product product, Basket basket) {
        this.quantityProd = quantityProd;
        this.product = product;
        this.basket = basket;
    }
    
    
    // Getter & Setter

    public CliProdBasketId getProdBasket() {return prodBasket;}
    public void setProdBasket(CliProdBasketId prodBasket) {this.prodBasket = prodBasket;}

    public int getQuantityProd() {return quantityProd;}
    public void setQuantityProd(int quantityProd) {this.quantityProd = quantityProd;}

    public Product getProduct() {return product;}
    public void setProduct(Product product) {this.product = product;}

    public Basket getBasket() {return basket;}
    public void setBasket(Basket basket) {this.basket = basket;}
    
    
    // equals() & HashCode()

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 17 * hash + Objects.hashCode(this.prodBasket);
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
        final ClProdBasket other = (ClProdBasket) obj;
        if (!Objects.equals(this.prodBasket, other.prodBasket)) {
            return false;
        }
        return true;
    }
    
    
    
}

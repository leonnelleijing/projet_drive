/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.model;

import java.io.Serializable;
import javax.persistence.Column;

/**
 *
 * @author cheny
 */
public class CliProdBasketId implements Serializable{
    
    // Propriétés 
    @Column(name ="CodeProduct")
    private int productCode;
    @Column(name = "CodeBasket")
    private int idBasket;
    
    
    // Constructor 

    public CliProdBasketId() {
    }

    public CliProdBasketId(int productCode, int idBasket) {
        this.productCode = productCode;
        this.idBasket = idBasket;
    }
    
    // Getter & Setter 

    public int getProductCode() {return productCode;}
    public void setProductCode(int productCode) {this.productCode = productCode;}

    public int getIdBasket() {return idBasket;}
    public void setIdBasket(int idBasket) {this.idBasket = idBasket;}
    
    // equals() & HashCode()

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 79 * hash + this.productCode;
        hash = 79 * hash + this.idBasket;
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
        final CliProdBasketId other = (CliProdBasketId) obj;
        if (this.productCode != other.productCode) {
            return false;
        }
        if (this.idBasket != other.idBasket) {
            return false;
        }
        return true;
    }
    
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author leonl
 */
@Entity
@Table(name="drive_produit")
public class Product {
    private int productCode; 
    private String productName; 

    public Product(int productCode, String productName) {
        this.productCode = productCode;
        this.productName = productName;
    }

    
    @Id
    @GeneratedValue
    @Column(name="ProductCode")
    public int getProductCode() {
        return productCode;
    }
    
    @Column(name="ProductName")
    public String getProductName() {
        return productName;
    }
    
    public void setProductCode(int productCode) {
        this.productCode = productCode;
    }


    public void setProductName(String productName) {
        this.productName = productName;
    }
    
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author leonl
 * poue tester, il faut juste dans bd. HibernateUtils, ajoute ma class et puis aller dans test package,
 * run la méthode init(), après voir dans la bd si ma table est bien crée
 */
@Entity
//utiliser @table pour spécifier le nom de notre table dans la BD
@Table(name="drive_produit")
public class Product {
    
    private int productCode;
    private String productName;
    private double productKiloPrice;
    private double productUnitPrice;
    private double productWeight;
    private String productDescription;
    private String productFormat;
    private String productEAN;
    private String productComposition;
    private String productOrigine;
    private String productBrandProprietary;
    private String productSecondaryBrand;

    public Product() {
    }

    public Product(int productCode, String productName) {
        this.productCode = productCode;
        this.productName = productName;
    }



    public Product(String productName, double productKiloPrice, double productUnitPrice, double productWeight, String productDescription, String productFormat, String productEAN, String productComposition, String productOrigine, String productBrandProprietary, String productSecondaryBrand) {
        this.productName = productName;
        this.productKiloPrice = productKiloPrice;
        this.productUnitPrice = productUnitPrice;
        this.productWeight = productWeight;
        this.productDescription = productDescription;
        this.productFormat = productFormat;
        this.productEAN = productEAN;
        this.productComposition = productComposition;
        this.productOrigine = productOrigine;
        this.productBrandProprietary = productBrandProprietary;
        this.productSecondaryBrand = productSecondaryBrand;
    }

 

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


    public double getProductKiloPrice() {
        return productKiloPrice;
    }

    public void setProductKiloPrice(double productKiloPrice) {
        this.productKiloPrice = productKiloPrice;
    }

    public double getProductUnitPrice() {
        return productUnitPrice;
    }

    public void setProductUnitPrice(double productUnitPrice) {
        this.productUnitPrice = productUnitPrice;
    }

    public double getProductWeight() {
        return productWeight;
    }

    public void setProductWeight(double productWeight) {
        this.productWeight = productWeight;
    }

    public String getProductDescription() {return productDescription;}

    public void setProductDescription(String productDescription) {this.productDescription = productDescription;}

    public String getProductFormat() {return productFormat;}

    public void setProductFormat(String productFormat) {this.productFormat = productFormat;}

    public String getProductEAN() {return productEAN;}

    public void setProductEAN(String productEAN) { this.productEAN = productEAN;}

    public String getProductComposition() {return productComposition;}

    public void setProductComposition(String productComposition) {this.productComposition = productComposition;}

    public String getProductOrigine() { return productOrigine;}

    public void setProductOrigine(String productOrigine) {this.productOrigine = productOrigine;}

    public String getProductBrandProprietary() {return productBrandProprietary;}

    public void setProductBrandProprietary(String productBrandProprietary) {this.productBrandProprietary = productBrandProprietary;}

    public String getProductSecondaryBrand() {return productSecondaryBrand;}

    public void setProductSecondaryBrand(String productSecondaryBrand) {this.productSecondaryBrand = productSecondaryBrand;}
    
    

    @Override
    public String toString() {
        return "Product{" + "productCode=" + productCode + ", productName=" + productName + ", productDescription="+ productDescription+'}';
    }
    
    
    
}

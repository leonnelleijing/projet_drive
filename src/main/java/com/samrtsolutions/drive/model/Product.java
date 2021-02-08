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
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

/**
 *
 * @author leonl
 * poue tester, il faut juste dans bd. HibernateUtils, ajoute ma class et puis aller dans test package,
 * run la méthode init(), après voir dans la bd si ma table est bien crée
 */

@Entity
@Table(name="drive_product")
public class Product implements Serializable{
    

    private int productCode;
    private String productName;
    private String productKiloPrice;
    private double productUnitPrice;
    private double productWeight;
    private String productDescription;
    private String productFormat;
    private String productEAN;
    private String productComposition;
    private String productOrigine;
    private String productBrandProprietary;
    private String productSecondaryBrand;
    private String image; 
    private String nuttritionScore;
    private Set<Label> labels = new HashSet<>();
    public Product() {
    }
    
    public Product(int productCode, String productName) {
        this.productCode = productCode;
        this.productName = productName;
    }

    
    public Product(String productName) {
        this.productName = productName;
    }

    public Product(String productName, String productKiloPrice, double productUnitPrice, double productWeight, String productDescription, String productFormat, String productEAN, String productComposition, String productOrigine, String productBrandProprietary, String productSecondaryBrand, String image, String nuttritionScore) {
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
        this.image = image;
        this.nuttritionScore = nuttritionScore;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="ProductCode")
    public int getProductCode() {
        return productCode;
    }   
    
    @Column(name="ProductName")
    public String getProductName() {
        return productName;
    }

    @Column(name="ProductImage")
    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getNuttritionScore() {
        return nuttritionScore;
    }

    public void setNuttritionScore(String nuttritionScore) {
        this.nuttritionScore = nuttritionScore;
    }

    @ManyToMany(mappedBy = "products", cascade=CascadeType.ALL)
    public Set<Label> getLabels() {
        return labels;
    }

    public void setLabels(Set<Label> labels) {
        this.labels = labels;
    }


    
    public void setProductCode(int productCode) {
        this.productCode = productCode;
    }


    public void setProductName(String productName) {
        this.productName = productName;
    }



    public String getProductKiloPrice() {
        return productKiloPrice;
    }

    public void setProductKiloPrice(String productKiloPrice) {
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
    
    public String toString() {
        return "Product{" + "productCode=" + productCode + ", productName=" + productName + ", productDescription="+ productDescription+'}';
    }
    
    public void addLabel(Label l){
       this.labels.add(l);
       l.getProducts().add(this);
    }

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 23 * hash + this.productCode;
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
        final Product other = (Product) obj;
        if (this.productCode != other.productCode) {
            return false;
        }
        return true;
    }
    
    
    
}

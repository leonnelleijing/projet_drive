/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.model;

import java.io.Serializable;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.MapKeyJoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author leonl
 * poue tester, il faut juste dans bd. HibernateUtils, ajoute ma class et puis aller dans test package,
 * run la méthode init(), après voir dans la bd si ma table est bien crée
 */

@Entity
@SuppressWarnings("PersistenceUnitPresent")

@Table(name="drive_product")
public class Product implements Serializable{
    

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
    private String image; 
    private String nuttritionScore;
    private Set<Label> labels = new HashSet<>();
    private Family family;
    private Set<LigneCommande> commandes= new HashSet<>();
    private Set<Basket> basket= new HashSet<>(0);
    private String productKiloPriceUnit;
    private Map<Basket, ClProdBasket> ProdBasket = new HashMap(0);

    

    
    
    
    private Set<Liste> lstList =new HashSet<>();
    
    
    
    public Product() {
    }
    
    public Product(int productCode, String productName) {
        this.productCode = productCode;
        this.productName = productName;
    }

    
    public Product(String productName) {
        this.productName = productName;
    }

    public Product(String productName, Double productKiloPrice, double productUnitPrice, double productWeight, String productDescription, String productFormat, String productEAN, String productComposition, String productOrigine, String productBrandProprietary, String productSecondaryBrand, String image, String nuttritionScore) {
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
    
    @ManyToMany(mappedBy = "products", cascade=CascadeType.ALL, fetch = FetchType.EAGER)
    public Set<Label> getLabels() {
        return labels;
    }
    
    public String getNuttritionScore() {
        return nuttritionScore;
    }

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name="ParentFamilyId")
    public Family getFamily() {
        return family;
    }
    
    @OneToMany(mappedBy="product", cascade=CascadeType.ALL, fetch = FetchType.EAGER)
    public Set<LigneCommande> getCommandes() {
        return commandes;
    }

    
    @OneToMany(mappedBy = "product",fetch = FetchType.EAGER, cascade = CascadeType.ALL,targetEntity=ClProdBasket.class)
    @MapKeyJoinColumn(name = "CodeBasket")  
    public Map<Basket, ClProdBasket> getProdBasket() {
        return ProdBasket;
    }

    public void setProdBasket(Map<Basket, ClProdBasket> ProdBasket) {
        this.ProdBasket = ProdBasket;
    }
    public void setCommandes(Set<LigneCommande> commandes) {
        this.commandes = commandes;
    }
    
    public void setFamily(Family family) {
        this.family = family;
    }
    
    
    public String getProductKiloPriceUnit() {
        return productKiloPriceUnit;
    }

    public void setProductKiloPriceUnit(String productKiloPriceUnit) {
        this.productKiloPriceUnit = productKiloPriceUnit;
    }
   
    
    public void setBasket(Set<Basket> basket) {
        this.basket = basket;
    }
    public void setImage(String image) {
        this.image = image;
    }

    public void setNuttritionScore(String nuttritionScore) {
        this.nuttritionScore = nuttritionScore;
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
    
    @ManyToMany()
    @JoinTable(name="drive_composer_liste",
                   joinColumns = @JoinColumn (name="ProductCode"),
            inverseJoinColumns = @JoinColumn (name="idList"))
    public Set<Liste> getLstList() {
        return lstList;
    }

    public void setLstList(Set<Liste> lstList) {
        this.lstList = lstList;
    }
    
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

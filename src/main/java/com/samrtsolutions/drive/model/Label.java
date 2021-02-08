/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.model;

import java.util.HashSet;
import java.util.Set;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

/**
 *
 * @author leonl
 */
@Entity
@Table(name="drive_label")
public class Label {
    private int codeLabel;
    private String nameLable; 
    private String imageLabel;
    private Set<Product> products= new HashSet<>();
    
    public Label() {
    }

    public Label(String nameLable, String imageLabel) {
        this.nameLable = nameLable;
        this.imageLabel = imageLabel;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    public int getCodeLabel() {
        return codeLabel;
    }

    public String getNameLable() {
        return nameLable;
    }
    
    public String getImageLabel() {
        return imageLabel;
    }

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name="drive_labeler",
            joinColumns=@JoinColumn(name="CodeLabel"),
            inverseJoinColumns=@JoinColumn(name="CodeProduct"))
    public Set<Product> getProducts() {
        return products;
    }

    public void setProducts(Set<Product> products) {
        this.products = products;
    }

    public void setImageLabel(String imageLabel) {
        this.imageLabel = imageLabel;
    }

    public void setCodeLabel(int codeLabel) {
        this.codeLabel = codeLabel;
    }

    public void setNameLable(String nameLable) {
        this.nameLable = nameLable;
    }

    @Override
    public int hashCode() {
        int hash = 7;
        hash = 59 * hash + this.codeLabel;
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
        final Label other = (Label) obj;
        if (this.codeLabel != other.codeLabel) {
            return false;
        }
        return true;
    }
    
}

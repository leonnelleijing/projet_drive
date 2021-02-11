/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
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
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author maxim
 */

@Entity
@Table(name="drive_liste")

public class Liste implements Serializable {
    
    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name ="idList")
    private int listCode; 
    
    @Column(name ="name")
    private String listName;
    
    @OneToMany (mappedBy = "liste", cascade =CascadeType.ALL, fetch = FetchType.EAGER) 
    private Set<PostIt> postItList = new HashSet<>(); 
    
    @ManyToMany(mappedBy="lstList")
    private Set<Product> produits = new HashSet<>(); 

    public Liste(String listName) {
        this.listName = listName;
    }

    public Liste() {
    }

    public int getListCode() {
        return listCode;
    }

    public void setListCode(int listCode) {
        this.listCode = listCode;
    }

    public String getListName() {
        return listName;
    }

    public void setListName(String listName) {
        this.listName = listName;
    }

    public Set<PostIt> getPostItList() {
        return postItList;
    }

    public void setPostItList(Set<PostIt> postItList) {
        this.postItList = postItList;
    }

    public Set<Product> getProduits() {
        return produits;
    }

    public void setProduits(Set<Product> produits) {
        this.produits = produits;
    }
    
    

   
    
    
    
            
}

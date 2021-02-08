/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.model;

import java.io.Serializable;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

/**
 *
 * @author 33667
 */
@Entity
@SuppressWarnings("PersistenceUnitPresent")
@Table(name = "Magasin")
public class Magasin implements Serializable{
    
    //Propriétés
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column (name = "CodeMagasin")
    
    private int code;
    private String nom;
    private String rue;
    private String codePostal;
    private String ville;
    
    /*@ManyToMany
            @JoinTable(name = "Produit",
                    joinColumns = @JoinColumn (name = "CodeMagasin"),
                    inverseJoinColumns = @JoinColumn(name = "CodeProduit"))
    Set<Produit> produits = new HashSet<>(0);*/
    
    //Constructor
    public Magasin(){}

    public Magasin(String nom, String rue, String codePostal, String ville) {
        this.nom = nom;
        this.rue = rue;
        this.codePostal = codePostal;
        this.ville = ville;
    }
    
    //Getters & Setters

    public int getCode() {
        return code;
    }

    public String getNom() {
        return nom;
    }

    public String getRue() {
        return rue;
    }

    public String getCodePostal() {
        return codePostal;
    }

    public String getVille() {
        return ville;
    }

    /*public Set<Produit> getProduits() {
        return produits;
    }*/

    public void setCode(int code) {
        this.code = code;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setRue(String rue) {
        this.rue = rue;
    }

    public void setCodePostal(String codePostal) {
        this.codePostal = codePostal;
    }

    public void setVille(String ville) {
        this.ville = ville;
    }

    /*public void setProduits(Set<Produit> produits) {
        this.produits = produits;
    }*/
    
    
    
    
    


}

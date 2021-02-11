/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.model;

import java.util.ArrayList;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 *
 * @author maxim
 */

@Entity
@Table(name="drive_postit")
public class PostIt {
   @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name ="id")
    private int postItCode; 
    
    @Column(name ="description")
    private String PostItDescription;
    
    @ManyToOne(targetEntity=Liste.class, fetch = FetchType.EAGER)
    private Liste liste;

    public PostIt() {
    }

    public PostIt(String PostItDescription) {
        this.PostItDescription = PostItDescription;
    }

    public PostIt(String PostItDescription, Liste liste) {
        this.PostItDescription = PostItDescription;
        this.liste = liste;
    }
    
    
    
    public int getPostItCode() {
        return postItCode;
    }

    public void setPostItCode(int postItCode) {
        this.postItCode = postItCode;
    }

    public String getPostItDescription() {
        return PostItDescription;
    }

    public void setPostItDescription(String PostItDescription) {
        this.PostItDescription = PostItDescription;
    }
    
    
    
}

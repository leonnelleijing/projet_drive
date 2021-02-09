/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 *
 * @author 33667
 */
@Embeddable
public class AffluenceId implements Serializable {
    
    //Propriétés (clé primaire composite pour la table Affluence
    @Column (name = "CodeMagasin")
    private int codeMagasin;
    @Column (name = "CodeCreneau")
    private int codeCreneau;
    @Column (name = "Date_Affluence")
    private Date dateAffluence;
    
    
}

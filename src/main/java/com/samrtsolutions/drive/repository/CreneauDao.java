/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.repository;

import com.samrtsolutions.drive.model.Creneau;
import java.util.Set;


/**
 *
 * @author leonl
 */
public interface CreneauDao  extends BaseDao<Creneau>{
   
    public Set<Creneau> afficherCreneau(int idMag); //Afficher les créneaux en fonction du magasin choisi

    
}

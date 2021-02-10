/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.repository;


import com.samrtsolutions.drive.model.Creneau;
import com.samrtsolutions.drive.model.Magasin;
import java.util.Set;

/**
 *
 * @author leonl
 */
public class CreneauDaoImpl extends BaseDaoImpl<Creneau> implements CreneauDao {
    
    public Set<Creneau> afficherCreneau(int idMag){
        
            MagasinDaoImpl magasin = new MagasinDaoImpl();
            Magasin m = magasin.get(idMag);
            Set<Creneau> listeCreneaux = m.getListeCreneau();
            
            return listeCreneaux;
    }
}

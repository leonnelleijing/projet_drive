/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.repository;

import com.samrtsolutions.drive.model.Creneau;
import com.samrtsolutions.drive.model.Magasin;
import java.util.List;

/**
 *
 * @author 33667
 */
public interface CreneauDao extends BaseDao<Creneau> {
    
    public List<Creneau> afficherCreneau(Magasin magasin);
    
}

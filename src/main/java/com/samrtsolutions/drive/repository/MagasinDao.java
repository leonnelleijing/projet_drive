/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.repository;

import com.samrtsolutions.drive.model.Magasin;
import java.util.List;

/**
 *
 * @author 33667
 */
public interface MagasinDao extends BaseDao<Magasin> {
    //Retourne la liste des magasins dont le code postal commence par le mot entré en paramètre 
    public List<Magasin> afficherMagasin(String mot);
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.repository;

import com.samrtsolutions.drive.model.Rayon;
import java.util.ArrayList;


/**
 *
 * @author leonl
 */
public interface RayonDao extends BaseDao<Rayon>{
   public ArrayList<Rayon> getAllRayons(); 
}

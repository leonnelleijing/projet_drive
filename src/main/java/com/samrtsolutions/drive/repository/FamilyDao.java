/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.repository;

import com.samrtsolutions.drive.model.Family;
import java.util.ArrayList;

/**
 *
 * @author leonl
 */
public interface FamilyDao extends BaseDao<Family>{
       public ArrayList<Family> getAllParentFamilies(); 
       
}

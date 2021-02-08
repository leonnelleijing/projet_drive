/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.repository;

import com.samrtsolutions.drive.model.Family;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author leonl
 */
public class FamilyDaoImpl extends BaseDaoImpl<Family> implements FamilyDao{

    @Override
    public ArrayList<Family> getAllParentFamilies() {;
       Query query =getSession().createQuery("from Family where ParentCategoryId IS NULL");
       List<Family> list = query.getResultList();
       return (ArrayList<Family>) list; 
    }
    
}

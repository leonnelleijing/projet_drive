/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.repository;

import com.samrtsolutions.drive.model.Family;
import com.samrtsolutions.drive.model.Product;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author leonl
 */
public class FamilyDaoImpl extends BaseDaoImpl<Family> implements FamilyDao{

    @Override
    public ArrayList<Family> getAllParentFamilies() {
       Session s  =factory.getCurrentSession();
       Transaction t=s.beginTransaction();
       Query query =s.createQuery("from Family where ParentCategoryId IS NULL");
       List<Family> list = query.getResultList();
       t.commit();
       return (ArrayList<Family>) list; 
    }

    @Override
    public Set<Product> getChildProductsByFamily(Family f) {
       Session s  =factory.getCurrentSession();
       Transaction t=s.beginTransaction();
       s.update(f);
       Set<Product> list = f.getChildProducts();
       return list;
              
    }
    
    
}

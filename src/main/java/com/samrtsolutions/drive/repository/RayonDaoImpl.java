/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.repository;

import com.samrtsolutions.drive.model.Family;
import com.samrtsolutions.drive.model.Product;
import com.samrtsolutions.drive.model.Rayon;
import static com.samrtsolutions.drive.repository.BaseDaoImpl.factory;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author leonl
 */
public class RayonDaoImpl extends BaseDaoImpl<Rayon> implements RayonDao {

    @Override
    public ArrayList<Rayon> getAllRayons() {
       Session s  =factory.getCurrentSession();
       Transaction t=s.beginTransaction();
       Query query =s.createQuery("from Rayon");
       List<Rayon> list = query.getResultList(); 
       t.commit();
       return (ArrayList<Rayon>) list;
    }

    @Override
    public Set<Product> getChildProductsByFamily(Rayon r) {
       Session s  =factory.getCurrentSession();
       Transaction t=s.beginTransaction();
       s.update(r);
       Set<Product> list = new HashSet<Product>();
       Set<Family> families=   r.getFamilies();
       for(Family f: families){
           list.addAll(f.getChildProducts());
        }
       t.commit();
       return list;
    }
    
}

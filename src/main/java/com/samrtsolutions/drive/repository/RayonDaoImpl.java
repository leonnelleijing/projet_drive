/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.repository;

import com.samrtsolutions.drive.model.Rayon;
import java.util.ArrayList;
import java.util.List;
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
       Query query =getSession().createQuery("from Rayon");
       List<Rayon> list = query.getResultList();       
       return (ArrayList<Rayon>) list;
    }
    
}

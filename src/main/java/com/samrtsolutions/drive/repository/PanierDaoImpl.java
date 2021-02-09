/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.repository;

import com.samrtsolutions.drive.bd.HibernateUtil;
import com.samrtsolutions.drive.model.Basket;
import java.text.SimpleDateFormat;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author cheny
 */
public class PanierDaoImpl extends BaseDaoImpl<Basket> implements PanierDao{
    
    // add a Panier 
    public static void addPanier() throws Exception {
        
        try (Session session = HibernateUtil.getSessionFactory().getCurrentSession()) {
            
            /*------------- Ouverture d'une transaction -------------*/
            Transaction t = session.beginTransaction();
            SimpleDateFormat df = new SimpleDateFormat("dd-mm-yyyy");
            
            //Basket p1 = new Basket(1, df.parse("02-06-2020"), p1);
            
            
        }
    }
    
}

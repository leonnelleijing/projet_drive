/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.repository;

import com.samrtsolutions.drive.model.Basket;
import com.samrtsolutions.drive.model.Product;
import java.text.SimpleDateFormat;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author cheny
 */
public class BasketDaoImpl extends BaseDaoImpl<Basket> implements BasketDao{
    
    // add a Panier 
    public static void addPanier(String d) throws Exception {
        
            Session s  =factory.getCurrentSession();
            Transaction t=s.beginTransaction();

            SimpleDateFormat df = new SimpleDateFormat("dd-mm-yyyy");
            
            Basket p1 = new Basket(df.parse(d));

            
            
            
            s.save(p1);
            
            t.commit();
 
    }
    
   public static void addProductBasket(Product p, Basket b) throws Exception {
       
            Session s  =factory.getCurrentSession();
            Transaction t=s.beginTransaction();
            s.update(p);
            s.update(b);

            b.addProductToBasket(p);
            s.save(p);
            
            t.commit();
   }
   
   
   public static void main(String[] args) throws Exception {
       
       
   }
}

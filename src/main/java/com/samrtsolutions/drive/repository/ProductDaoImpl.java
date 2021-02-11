/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.repository;

import com.samrtsolutions.drive.bd.HibernateUtil;
import com.samrtsolutions.drive.model.Label;
import com.samrtsolutions.drive.model.Product;
import java.io.FileNotFoundException;
import java.util.List;
import java.util.Set;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

/**
 *
 * @author leonl
 */
public class ProductDaoImpl extends BaseDaoImpl<Product> implements ProductDao {
    
        public  List<Product> getAllProduct(){
            Session s  =factory.getCurrentSession();
            Transaction t=s.beginTransaction();
            Query q =s.createQuery("from Product");
            List<Product> p=  (List<Product>)q.getResultList();
            t.commit();
            return p;
                  
        }
    
        //Récupérer une liste de produit
        public List<Product> getListProduct(String word)
        {
            Session s  =factory.getCurrentSession();
            Transaction t=s.beginTransaction();
            Query q = s.createQuery("from Product where productName like :test");
            q.setParameter("test", word +'%');
             List<Product> p= (List<Product>)q.list();
            t.commit();
            return p;
        }

    @Override
    public void addLabel(Product p, Label l) {
       Session s  =factory.getCurrentSession();
       Transaction t=s.beginTransaction();
       s.update(p);
       s.update(l);
       p.addLabel(l);
       t.commit();
    }

//    @Override
//    public Set<Product> persisterProductsWithList(Set<Product> list) {
//     Set<Product> products= null; 
//     Session s  =factory.getCurrentSession();
//     Transaction t=s.beginTransaction();
//     for(Product p: list){
//        s.update(p);
//        products.add(p);  
//     }
//      t.commit();
//    return products;
//   
//    }
 

}

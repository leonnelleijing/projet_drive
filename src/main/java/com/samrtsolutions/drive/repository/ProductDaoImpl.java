/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.repository;

import com.samrtsolutions.drive.bd.HibernateUtil;
import com.samrtsolutions.drive.model.Product;
import java.io.FileNotFoundException;
import java.util.List;
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
            t.commit();
            return (List<Product>)q.getResultList();
        }
    
        //Récupérer une liste de produit
        public List<Product> getListProduct(String word)
        {
            Session s  =factory.getCurrentSession();
            Transaction t=s.beginTransaction();
            Query q = s.createQuery("from Product where productName like :test");
            q.setParameter("test", word +'%');
            t.commit();
            return (List<Product>)q.list();
        }
        


}
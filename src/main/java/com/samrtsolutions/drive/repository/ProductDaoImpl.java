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

    
    //Récupérer une liste de produit
        public List<Product> getListProduct(String word)
        {
             
                Query q = getSession().createQuery("from Product where productName like :test");
                q.setParameter("test", word +'%');
                List<Product> lp =  (List<Product>)q.list();

               return lp;

        }


}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.repository;

import com.samrtsolutions.drive.model.Family;
import com.samrtsolutions.drive.model.Liste;
import com.samrtsolutions.drive.model.PostIt;
import com.samrtsolutions.drive.model.Product;
import static com.samrtsolutions.drive.repository.BaseDaoImpl.factory;
import java.util.ArrayList;
import javax.persistence.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

/**
 *
 * @author maxim
 */
public class ListDaoImpl extends BaseDaoImpl<Liste> implements ListDao{
    

           public  java.util.List<Liste> getAllList(){
            Session s  =factory.getCurrentSession();
            Transaction t=s.beginTransaction();
            org.hibernate.query.Query q =s.createQuery("from Liste");
            java.util.List<Liste> p=  (java.util.List<Liste>)q.getResultList();
            t.commit();
            return p;
             
        }
    public String addList(String name){
        Session s  =factory.getCurrentSession();
        Transaction t=s.beginTransaction();
        Liste l = new Liste(name);
        String rst;
        rst=name;
        
        s.save(l);
        t.commit();
        return rst;
                
    }
    
    public String addWord(String name, Liste list){
        Session s  =factory.getCurrentSession();
        Transaction t=s.beginTransaction();
        
        s.update(list);
        
        System.out.println(list.getListName());
        PostIt p = new PostIt(name, list);
        list.getPostItList().add(p);
        String rst1;
        rst1="bonjour";
        
        s.save(list);
        s.save(p);
        t.commit();
        return rst1;
                
    
    }   
}

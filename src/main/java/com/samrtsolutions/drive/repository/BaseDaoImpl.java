/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.repository;
import com.samrtsolutions.drive.bd.HibernateUtil;
import javax.annotation.Resource;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

/**
 *
 * @author leonl
 * @param <T>
 */
public class BaseDaoImpl<T> implements BaseDao<T> {

@Resource
    
    public static SessionFactory factory= HibernateUtil.getSessionFactory();
    private Class<T> clazz = GeneriscUtil.getGenericType(this.getClass());

    
    public void edit(Object obj) {
        Session s  =factory.getCurrentSession();
        Transaction t=s.beginTransaction();
        s.saveOrUpdate(obj);
        t.commit();
        
         
    }

    public void delete(int id) {
        Session s  =factory.getCurrentSession();
        Transaction t=s.beginTransaction();
        Object object = s.get(clazz, id);
        if(object != null) {
            s.delete(object);
            t.commit();
        }
    }

    public T load(int id) {
        Session s  =factory.getCurrentSession();
        Transaction t=s.beginTransaction();
        T o =(T) s.load(clazz, id);
        t.commit();
        return o ;
    }

    public T get(int id) {
        Session s  =factory.getCurrentSession();
        Transaction t=s.beginTransaction();
        T o= (T) s.get(clazz, id);
        return o;
    }

}

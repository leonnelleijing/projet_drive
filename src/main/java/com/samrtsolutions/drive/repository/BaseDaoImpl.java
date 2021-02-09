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
 * @author cheny
 */
//实现类
public class BaseDaoImpl<T> implements BaseDao<T> {
@Resource 


    private SessionFactory factory = HibernateUtil.getSessionFactory();
    private Class<T> clazz = GeneriscUtil.getGenericType(this.getClass());  // auto-Mapping la classe
    private Transaction t;
    
    protected Session getSession() {
        t = factory.getCurrentSession().beginTransaction();
        return factory.getCurrentSession();
    }
    
    public void edit(Object obj) {
        getSession().saveOrUpdate(obj);
        t.commit();
    } 
    
    public void delete(int id) {
        Object object = getSession().get(clazz, id);
        if (object != null) {
            getSession().delete(object);
            t.commit();
        }
    }
    
    public T load(int id) {
        return (T) getSession().load(clazz, id);
        
    }
    
    public T get(int id) {
        return (T) getSession().get(clazz, id);
    }
}
 
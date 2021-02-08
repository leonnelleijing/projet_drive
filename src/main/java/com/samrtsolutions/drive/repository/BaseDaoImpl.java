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
    
    private static SessionFactory factory= HibernateUtil.getSessionFactory();
    private Class<T> clazz = GeneriscUtil.getGenericType(this.getClass());
    private static Transaction t=null; 
    private static Session s=null ; 
    
    static{
        s=factory.getCurrentSession();
        t=s.beginTransaction();
    }
    
    public void edit(Object obj) {
        s.saveOrUpdate(obj);
         
    }

    public void delete(int id) {
        Object object = s.get(clazz, id);
        if(object != null) {
            s.delete(object);
        }
    }

    public T load(int id) {
        return (T) s.load(clazz, id);
    }

    public T get(int id) {
        return (T) s.get(clazz, id);
    }

    public Session getSession(){
        return s;
    }
}

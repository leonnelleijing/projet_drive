/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testbd;
import com.samrtsolutions.drive.bd.HibernateUtil;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.junit.After;
import org.junit.Before;
/**
/**
 *
 * @author leonl
 */
public class TestConnexionBD {
    
    public TestConnexionBD() {
    }
    
    private static Session session; 
    private static Transaction t ;
    
    
    @Before
    public void before(){
       session = HibernateUtil.getSessionFactory().getCurrentSession();
       t = session.beginTransaction();
    }
    
    @After
    public void after(){
         t.commit();
    }
            
     @org.junit.Test
    public void inition(){
        
    }
}

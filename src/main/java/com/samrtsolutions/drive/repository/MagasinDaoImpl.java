/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.repository;

import com.samrtsolutions.drive.bd.HibernateUtil;
import com.samrtsolutions.drive.model.Magasin;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

/**
 *
 * @author 33667
 */
public class MagasinDaoImpl extends BaseDaoImpl<Magasin> implements MagasinDao {
    
    // Enregistrement de magasin
    public static void addMagasin() throws FileNotFoundException {
        
        try (Session session  = HibernateUtil.getSessionFactory().getCurrentSession()){
            
            /*------ Ouverture d'une transaction ------ */
            Transaction t = session.beginTransaction(); //Ouverture d'une session
            
            Magasin m1 = new Magasin("Shop_One", "Rue de Lacourtine", "31000", "Toulouse");
            Magasin m2 = new Magasin("Shop_One", "Rue de Bessines", "31100", "Toulouse");
            Magasin m3 = new Magasin("Shop_One_Market", "Place Belforth", "69003", "Lyon 3e");
            Magasin m4 = new Magasin("Shop_One_City", "Rue de la Glacière", "75013", "Paris 13e");
            
            session.save(m1);
            session.save(m2);
            session.save(m3);
            session.save(m4);
            
            t.commit();
        } catch (Exception e) {
            System.out.println("Erreur - " + e.getMessage());
        }
    }
    
    public List<Magasin> afficherMagasin(String mot){
        try (Session session  = HibernateUtil.getSessionFactory().getCurrentSession()){
            
            /*------ Ouverture d'une transaction ------ */
            Transaction t = session.beginTransaction(); //Ouverture d'une session
            
            //Requête préparée HQL allant chercher les mots en BD
            Query query = session.createQuery("from Magasin as m where codePostal like :mot");
            //Affecter le paramètre voulu dans la requête
            query.setParameter("mot", mot+'%');
            List<Magasin> listeMagasins = (List<Magasin>)query.list();
            
            return listeMagasins;
            
        }
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.repository;

import com.samrtsolutions.drive.bd.HibernateUtil;
import com.samrtsolutions.drive.model.Creneau;
import com.samrtsolutions.drive.model.Magasin;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

/**
 *
 * @author 33667
 */
//public class CreneauDaoImpl extends BaseDaoImpl<Creneau> implements CreneauDao {
    
    /*public List<Creneau> afficherCreneau(Magasin magasin){
        try (Session session  = HibernateUtil.getSessionFactory().getCurrentSession()){
            
            ------ Ouverture d'une transaction ------
            Transaction t = session.beginTransaction(); //Ouverture d'une session
            
            //Requête préparée HQL allant chercher les mots en BD
            Query query = session.createQuery("from Magasin as m where codePostal like :magasin");
            //Affecter le paramètre voulu dans la requête
            query.setParameter("mot", mot+'%');
            List<Magasin> listeMagasins = (List<Magasin>)query.list();
            
            return listeMagasins;
    }
}*/

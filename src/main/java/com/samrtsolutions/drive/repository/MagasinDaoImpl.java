/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.repository;

import com.samrtsolutions.drive.bd.HibernateUtil;
import com.samrtsolutions.drive.model.Creneau;
import com.samrtsolutions.drive.model.Magasin;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

/**
 *
 * @author Helmy
 */
public class MagasinDaoImpl extends BaseDaoImpl<Magasin> implements MagasinDao {
    
    public List<Magasin> afficherMagasin(String mot){
        try (Session session  = HibernateUtil.getSessionFactory().getCurrentSession()){
            
            /*------ Ouverture d'une transaction ------ */
            Transaction t = session.beginTransaction(); //Ouverture d'une session
            
            //Requête préparée HQL allant chercher les mots en BD
            Query query = session.createQuery("FROM Magasin as m WHERE codePostal like :mot");
            //Affecter le paramètre voulu dans la requête
            query.setParameter("mot", mot+'%');
            List<Magasin> listeMagasins = (List<Magasin>)query.list();
            
            return listeMagasins;          
        }
    }
}

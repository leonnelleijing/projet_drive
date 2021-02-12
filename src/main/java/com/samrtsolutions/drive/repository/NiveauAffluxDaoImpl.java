/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.repository;

import com.samrtsolutions.drive.bd.HibernateUtil;
import com.samrtsolutions.drive.model.Creneau;
import com.samrtsolutions.drive.model.NiveauAfflux;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

/**
 *
 * @author Helmy
 */
public class NiveauAffluxDaoImpl extends BaseDaoImpl<NiveauAfflux> implements NiveauAffluxDao {
    public NiveauAffluxDaoImpl(){}
    
    public List<NiveauAfflux> afficherAfflux(int codeMag){
        try (Session session  = HibernateUtil.getSessionFactory().getCurrentSession()){
            
            /*------ Ouverture d'une transaction ------ */
            Transaction t = session.beginTransaction(); //Ouverture d'une session
            
            //Requête préparée HQL allant chercher les mots en BD
            Query query = session.createQuery("FROM NiveauAfflux as niv WHERE niv.magasin.code=:codeMag");
            //Affecter le paramètre voulu dans la requête
            query.setParameter("codeMag", codeMag);
            List<NiveauAfflux> listeNiveauAfflux = (List<NiveauAfflux>)query.list();
            
            return listeNiveauAfflux;
        }
    }
    
    public ArrayList<NiveauAfflux> afficherCreneau(int idMag){
        try (Session session  = HibernateUtil.getSessionFactory().getCurrentSession()){
            
            /*------ Ouverture d'une transaction ------ */
            Transaction t = session.beginTransaction(); //Ouverture d'une session
            
            //Requête préparée HQL allant chercher les mots en BD
            Query query = session.createQuery("FROM NiveauAfflux as niv WHERE niv.magasin.code=:codeMag");
            //Affecter le paramètre voulu dans la requête
            query.setParameter("codeMag", idMag);
            ArrayList<NiveauAfflux> listeLiveauAffluxCreneaux = (ArrayList<NiveauAfflux>)query.list();
            
            return listeLiveauAffluxCreneaux;
        }
    }
}

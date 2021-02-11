/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.repository;

import com.samrtsolutions.drive.bd.HibernateUtil;
import com.samrtsolutions.drive.model.Affluence;
import com.samrtsolutions.drive.model.Creneau;
import com.samrtsolutions.drive.model.Date_Affluence;
import com.samrtsolutions.drive.model.Magasin;
import java.util.Date;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

/**
 *
 * @author Helmy
 */
public class AffluenceDaoImpl extends BaseDaoImpl<Affluence> implements AffluenceDao{
    
    
    public String incrementerQteCommande (int codeMag, int codeCreneau, String date){
        
        //Request HQL pour vérifier si une commande à cette date, dans ce magasin et à ce créneau a été fait
        try (Session session  = HibernateUtil.getSessionFactory().getCurrentSession()){
            
            /*------ Ouverture d'une transaction ------ */
            Transaction t = session.beginTransaction(); //Ouverture d'une session
            
            //Requête préparée HQL allant chercher les mots en BD
            Query query = session.createQuery("FROM Date_Affluence as d WHERE d.date=:date");
            
            query.setParameter("date", date);
            //Je vérifie si la ligne existe
            Boolean exister = query.list().isEmpty();
            //System.out.print(listeNiveauAfflux.get(0));
            String response = "";
            
            //Si la ligne n'existe pas, ma liste est vide
            if (!exister){
                
                System.out.println("Dans ma paranoïa");
                //J'ajoute d'abord la date dans la table Date_Affluence qui sera utilisé comme clé pour le tuple de la table Affluence
                Date_Affluence dateKey = new Date_Affluence(date);
                //Je dois commit pour que je puisse récupérer le code de la date (id)
                session.save(dateKey);
                t.commit();
                
                //Le commit a fermé la session. Je dois donc en rouvrir une
                //Session session2  = HibernateUtil.getSessionFactory().getCurrentSession();
            
                    /*------ Ouverture d'une transaction ------ */
                    Transaction t2 = session.beginTransaction(); 
                
                //J'insère dans la table Affluence les données reçues en paramètre
                MagasinDaoImpl magasin = new MagasinDaoImpl();
                CreneauDaoImpl creneau = new CreneauDaoImpl();
                Date_AffluenceDaoImpl dateAfflu = new Date_AffluenceDaoImpl();
                Magasin m = magasin.get(codeMag);
                Creneau c = creneau.get(codeCreneau);
                // J'ajoute aussi le code récupéré de la ligne que je viens de créer
                Date_Affluence d = dateAfflu.get(dateKey.getCodeDate());

                Affluence affluence = new Affluence (1, m , c , dateAfflu.get(dateKey.getCodeDate()));
                
                session.save(affluence);
                t2.commit();

                response = "Votre commande a bien été enregistrée !";
                return response;
                
            } else {
                //Je récupère la ligne
                List<Date_Affluence> listeNiveauAfflux = (List<Date_Affluence>)query.list();
                //Ensuite, je vais chercher la quantité de commande à la date et créneau choisi (si une date existe, ça veut dire qu'un créneau et magasin y est associé
                Query queryQteCom = session.createQuery("FROM Affluence as aff WHERE aff.creneau.code=:codeC AND aff.magasin.code=:codeM AND aff.date_affluence.codeDate=:codeD");
                
                queryQteCom.setParameter("codeC", codeCreneau);
                queryQteCom.setParameter("codeM", codeMag);
                //Si la liste contient un résultat, je récupère l'unique résutlat à la place 0
                queryQteCom.setParameter("codeD", listeNiveauAfflux.get(0).getCodeDate());
                
                List<Affluence> listeAffluQteCom = (List<Affluence>)query.list();
                int qteCom = listeAffluQteCom.get(0).getQteCommande();
                
                
                if (qteCom == 10){ //Un créneau ne peut accueillir que 10 commandes en même temps
                    //Ce cas sera annoncé seulement si qqun d'autre commande au même moment sur le même créneau et que l'utilisateur ne refresh pas la page ou ne change pas de magasin (sinon il serait montré indisponible)
                    response = "Désolé, le créneau n'est plus disponible !";
                    return response;
                } else {
                    //Sinon, j'incrémente de 1 la quantité de commandes à ce créneau
                    Query addQteCom = session.createQuery("FROM Affluence aff WHERE aff.creneau.code=:codeC AND aff.magasin.code=:codeM AND aff.date_affluence.codeDate=:codeD" );
                      //Affecter le paramètre voulu dans la requête
                      addQteCom.setParameter("codeC", codeCreneau);
                      addQteCom.setParameter("codeM", codeMag);
                      addQteCom.setParameter("codeD", listeNiveauAfflux.get(0).getCodeDate());

                    //List<Affluence> listeAffluence = (List<Affluence>)query.list();
                    //Affluence objetRecupere = listeAffluence.get(0).getClass();
                  
                    
                    response = "Votre commande a bien été enregistrée !";
                    return response;
                }
            }
                    
            
        }
    }
}

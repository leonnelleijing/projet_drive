/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.repository;





import com.samrtsolutions.drive.bd.HibernateUtil;
import com.samrtsolutions.drive.model.Product;
import java.io.FileNotFoundException;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

/**
 *
 * @author leonl
 */
public class ProductDaoImpl extends BaseDaoImpl<Product> implements ProductDao {
    //Enregistrement de produit 
        public static void addProduct() throws FileNotFoundException
        {
            try (Session session = HibernateUtil.getSessionFactory().getCurrentSession())
			{
			/*----- Ouverture d'une transaction -----*/
			Transaction t = session.beginTransaction(); //Ouverture d'une session 
        
                        Product p1 = new Product("Pomme",3,2,200,"Pomme du sud","Gramme","31AAA","","Maroc","Carrefour","Carrefour");
                        Product p2 = new Product("Pomme française",3,2,200,"Pomme du sud","Gramme","31AAA","","Maroc","Carrefour","Carrefour");
                        Product p3 = new Product("Pomme espagnole",3,2,200,"Pomme du sud","Gramme","31AAA","","Maroc","Carrefour","Carrefour");

                        session.save(p1);
                        session.save(p2);
                        session.save(p3);

                        
                        t.commit();
                        }
        }
     
    //Récupérer une liste de produit
        public List<Product> getListProduct(String word)
        {
               Session ses = HibernateUtil.getSessionFactory().getCurrentSession();
               Transaction t = ses.beginTransaction();
                Query q = ses.createQuery("from Product where productName like :test");
                q.setParameter("test", word +'%');
               List<Product> lp =  (List<Product>)q.list();
               
              
               
               return lp;

        }
        

}

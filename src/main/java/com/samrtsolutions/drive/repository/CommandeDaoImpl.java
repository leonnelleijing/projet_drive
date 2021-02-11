/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.repository;

import com.samrtsolutions.drive.model.Commande;
import com.samrtsolutions.drive.model.Family;
import com.samrtsolutions.drive.model.LigneCommande;
import com.samrtsolutions.drive.model.Magasin;
import com.samrtsolutions.drive.model.Product;
import com.samrtsolutions.drive.model.Rayon;
import static com.samrtsolutions.drive.repository.BaseDaoImpl.factory;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.TreeMap;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

/**
 *
 * @author leonl
 */
public class CommandeDaoImpl extends BaseDaoImpl<Commande> implements CommandeDao{

    @Override
    public List<Commande> getAllCommandes() {
        Session s  =factory.getCurrentSession();
        Transaction t=s.beginTransaction();
        Query q =s.createQuery("from Commande");
        List<Commande> p=  (List<Commande>)q.getResultList();
        t.commit();
        return p;
    }

    @Override
    public List<Commande> getAllCommandeToPrepareToday(Magasin magasin) {
        Session s  =factory.getCurrentSession();
        Transaction t=s.beginTransaction();
        DateTimeFormatter  format =  DateTimeFormatter.ofPattern("yyyy-MM-dd");
        String date= LocalDateTime.now().format(format);
        System.out.println(date);
        Query q =s.createQuery("from Commande c where to_days(c.dateRetraite) =to_days(:date) and c.magasin=:magasin order by c.dateRetraite,c.creneauRetrait");
        q.setParameter("date", date);
        q.setParameter("magasin", magasin);
        List<Commande> p=  (List<Commande>)q.getResultList();
        System.out.println(p);
        t.commit();
        return p;
    }

    @Override
    public Map<Rayon,Map<Family,Map<Product,Integer>>> getAllProductsByOrder(Commande commande) {
        Map<Product,Integer> allProducts= getAllProduct(commande);
        Map<Rayon,Map<Family,Map<Product,Integer>>> productByOrder = new HashMap<Rayon,Map<Family,Map<Product,Integer>>>();
        Set<Entry<Product, Integer>> products = allProducts.entrySet();
        for(Entry<Product, Integer> product : products){
            if(productByOrder.containsKey(product.getKey().getFamily().getRayon())){
                Map<Family,Map<Product,Integer>> families= productByOrder.get(product.getKey().getFamily().getRayon());
                 if(families.containsKey(product.getKey().getFamily())){
                    Map<Product,Integer> familiesProducts= families.get(product.getKey().getFamily());
                    familiesProducts.put(product.getKey(), product.getValue()); 
                 }else{
                     Map<Product,Integer> familiesProducts= new HashMap<Product,Integer>();
                     familiesProducts.put(product.getKey(), product.getValue());
                     families.put(product.getKey().getFamily(), familiesProducts);
                 }
            }else{
                 Map<Family,Map<Product,Integer>> families= new HashMap<Family,Map<Product,Integer>>();
                 Map<Product,Integer> familiesProducts= new HashMap<Product,Integer>();
                 familiesProducts.put(product.getKey(),product.getValue());
                 families.put(product.getKey().getFamily(), familiesProducts);
                 productByOrder.put(product.getKey().getFamily().getRayon(), families);
            }
        }
        return productByOrder;
    }
    
    private Map<Product,Integer> getAllProduct(Commande commande){
        Session s  =factory.getCurrentSession();
        Transaction t=s.beginTransaction();
        Map<Product,Integer> ls= new HashMap<Product,Integer>();
        for(LigneCommande l: commande.getLigneCommandes()){
            ls.put(l.getProduct(), l.getQuantity());
           //System.out.println(l.getProduct().getProductName());
        }
        t.commit();
        return ls;
        
    }
    
    
    
    
}

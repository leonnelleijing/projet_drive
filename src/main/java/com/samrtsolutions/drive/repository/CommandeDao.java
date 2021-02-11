/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.repository;

import com.samrtsolutions.drive.model.Basket;
import com.samrtsolutions.drive.model.Client;
import com.samrtsolutions.drive.model.Commande;
import com.samrtsolutions.drive.model.Creneau;
import com.samrtsolutions.drive.model.EtatCommande;
import com.samrtsolutions.drive.model.Family;
import com.samrtsolutions.drive.model.Magasin;
import com.samrtsolutions.drive.model.Product;
import com.samrtsolutions.drive.model.Rayon;
import java.util.Date;
import java.util.List;
import java.util.Map;
import java.util.Set;

/**
 *
 * @author leonl
 */
public interface CommandeDao extends BaseDao<Commande>{
    public List<Commande> getAllCommandes();
    public List<Commande> getAllCommandeToPrepareToday(Magasin magasin);
    public  Map<Rayon,Map<Family,Map<Product,Integer>>> getAllProductsByOrder(Commande commande);
    public void TransferPanierToCommande(Basket basket,  Magasin magasin, Creneau creneau,Client client,EtatCommande etat,Date date);
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testbd;

import com.samrtsolutions.drive.model.Client;
import com.samrtsolutions.drive.model.Commande;
import com.samrtsolutions.drive.model.EtatCommande;
import com.samrtsolutions.drive.model.LigneCommande;
import com.samrtsolutions.drive.model.Magasin;
import com.samrtsolutions.drive.model.Product;
import com.samrtsolutions.drive.repository.ClientDaoImpl;
import com.samrtsolutions.drive.repository.CommandeDaoImpl;
import com.samrtsolutions.drive.repository.CreneauDaoImpl;
import com.samrtsolutions.drive.repository.EtatCommandeImpl;
import com.samrtsolutions.drive.repository.LigneCommandeImpl;
import com.samrtsolutions.drive.repository.MagasinDaoImpl;
import com.samrtsolutions.drive.repository.ProductDaoImpl;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import org.junit.Test;
import static org.junit.Assert.*;
import org.junit.Ignore;

/**
 *
 * @author leonl
 */
public class TestCommande {
    private static CommandeDaoImpl com= new CommandeDaoImpl();
    private static EtatCommandeImpl ecom= new EtatCommandeImpl();
    private static ClientDaoImpl cli= new ClientDaoImpl();
    private static LigneCommandeImpl licom= new LigneCommandeImpl();
    private static ProductDaoImpl procom= new ProductDaoImpl();
    private static MagasinDaoImpl magim= new MagasinDaoImpl();
    
    public TestCommande() {
    }
   
    @Test
    @Ignore
    public void addNewCommande() throws ParseException{
        CreneauDaoImpl crenau= new CreneauDaoImpl();
        MagasinDaoImpl magasin = new MagasinDaoImpl();
        Client client= cli.get(1);
        Commande c = new Commande(client,magasin.get(1),crenau.get(1));
        com.edit(c);
    }
    
    @Test
    @Ignore
    public void testAddProductToCommande(){
        Commande commande= com.get(1);
        //System.out.println(commande.getNumCommande());
        Product p= procom.get(2);
        //System.out.println(p.getProductName());
        LigneCommande l= new LigneCommande(commande,p,2);
        licom.edit(l);
    }
    @Test
    public void testGetAllDemande(){
        System.out.println(com.getAllCommandes());
    }
    
    @Test
    public void testGetAllDemandesToday(){
        Magasin magasin = magim.get(1);
        for(Commande c: com.getAllCommandeToPrepareToday(magasin)){
            System.out.println(c);
        }
    }
    
    @Test
    public void testGetAllProductByOrder(){
        Commande commande= com.get(1);
        com.getAllProductsByOrder(commande);
    }
    
}

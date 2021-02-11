/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testbd;

import com.samrtsolutions.drive.bd.HibernateUtil;
import com.samrtsolutions.drive.model.Creneau;
import com.samrtsolutions.drive.model.Magasin;
import com.samrtsolutions.drive.model.NiveauAfflux;
import com.samrtsolutions.drive.repository.CreneauDaoImpl;
import com.samrtsolutions.drive.repository.MagasinDaoImpl;
import com.samrtsolutions.drive.repository.NiveauAffluxDaoImpl;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.junit.Ignore;
import org.junit.Test;

/**
 *
 * @author Helmy
 */
public class TestCreneauDaoImpl {
    
    public TestCreneauDaoImpl() {}
    
    @Test
    public void testMethod (){
        try (Session session  = HibernateUtil.getSessionFactory().getCurrentSession()){
        NiveauAffluxDaoImpl nivAfflux = new NiveauAffluxDaoImpl();
        ArrayList<NiveauAfflux> listeCreneaux = nivAfflux.afficherCreneau(1);
        for (NiveauAfflux niv : listeCreneaux){
            System.out.println("\n"+niv.getCreneau().getHoraire());
        }
        
        
        }
    }
    
}

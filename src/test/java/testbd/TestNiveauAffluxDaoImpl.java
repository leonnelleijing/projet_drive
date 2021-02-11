/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testbd;

import com.samrtsolutions.drive.bd.HibernateUtil;
import com.samrtsolutions.drive.model.NiveauAfflux;
import com.samrtsolutions.drive.repository.NiveauAffluxDaoImpl;
import java.util.ArrayList;
import org.hibernate.Session;
import org.junit.Test;

/**
 *
 * @author 33667
 */
public class TestNiveauAffluxDaoImpl {
    public TestNiveauAffluxDaoImpl(){}
    
    @Test
    public void testMethod (){
            NiveauAffluxDaoImpl nivAfflux = new NiveauAffluxDaoImpl();
            ArrayList<NiveauAfflux> listeCreneaux = nivAfflux.afficherCreneau(1);
            for (NiveauAfflux niv : listeCreneaux){
                System.out.println("\n"+niv.getCreneau().getHoraire());
            }
            
            ArrayList<NiveauAfflux> listeAffluence = nivAfflux.afficherCreneau(1);
            for (NiveauAfflux niv : listeAffluence){
                System.out.println("\n"+niv.getNiveauAff());
            }
    }
        
    
}

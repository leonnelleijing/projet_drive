/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testbd;

import com.samrtsolutions.drive.model.Magasin;
import com.samrtsolutions.drive.repository.AffluenceDaoImpl;
import com.samrtsolutions.drive.repository.MagasinDaoImpl;
import java.util.List;
import org.junit.Ignore;
import org.junit.Test;

/**
 *
 * @author Helmy
 */
public class TestAffluenceDaoImpl {
    
    public TestAffluenceDaoImpl() {}
    
    @Test
    @Ignore
    public void testMethod (){
        AffluenceDaoImpl affluence = new AffluenceDaoImpl(); 
        String response = affluence.incrementerQteCommande(2, 1, "Mardi 14 Décembre 2021");
        System.out.println(response);
    }
    
}

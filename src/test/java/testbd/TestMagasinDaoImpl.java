/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testbd;

import com.samrtsolutions.drive.model.Magasin;
import com.samrtsolutions.drive.repository.MagasinDaoImpl;
import java.util.List;
import org.junit.Test;
import static org.junit.Assert.*;
import org.junit.Ignore;

/**
 *
 * @author 33667
 */
public class TestMagasinDaoImpl {

    public TestMagasinDaoImpl() {
    }
    
    @Test
    @Ignore
    public void testMethod (){
        MagasinDaoImpl mag = new MagasinDaoImpl();
        List<Magasin> listeMagasin = mag.afficherMagasin("31");
        for (Magasin magasin : listeMagasin){
            System.out.println("<magasin><![CDATA[" + magasin.getNom() + ", " + magasin.getCodePostal() + ", "+magasin.getVille()+ ", " + magasin.getRue() + "]]></magasin>");
        }
    }
    //Test OK
    
}

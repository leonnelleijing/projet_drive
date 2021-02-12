/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testbd;

import com.samrtsolutions.drive.repository.ListDaoImpl;
import com.samrtsolutions.drive.model.Liste;
import com.samrtsolutions.drive.model.PostIt;
import org.junit.Ignore;
import org.junit.Test;

/**
 *
 * @author maxim
 */
public class TestList {
    
    public TestList(){};
    @Test
    @Ignore
    public void testAdd(){
        Liste l= new Liste ("Semaine");
        ListDaoImpl listadd = new ListDaoImpl();
        
        listadd.edit(l);
    }
    
    @Test
    @Ignore
    public void testAddPI(){
        PostIt p = new PostIt ("Beurre");
        ListDaoImpl postItAdd = new ListDaoImpl();
        
        postItAdd.edit(p);
    }
}

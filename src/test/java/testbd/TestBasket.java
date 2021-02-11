/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testbd;

import com.samrtsolutions.drive.model.Basket;
import com.samrtsolutions.drive.repository.BasketDaoImpl;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author leonl
 */
public class TestBasket {
    private static BasketDaoImpl pm= new BasketDaoImpl();
    public TestBasket() {
    }
    @Test
    public void testGetBasket(){
        Basket b=pm.get(1);
        System.out.println(b.getIdBasket());
        
    }
    
    
}

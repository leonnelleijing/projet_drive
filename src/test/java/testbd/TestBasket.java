/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testbd;

import com.samrtsolutions.drive.model.Basket;
import com.samrtsolutions.drive.model.ClProdBasket;
import com.samrtsolutions.drive.model.Product;
import com.samrtsolutions.drive.repository.BasketDaoImpl;
import com.samrtsolutions.drive.repository.ClProdBasketDaoImpl;
import com.samrtsolutions.drive.repository.ProductDaoImpl;
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
    
    @Test
    public void testRemoveProduct(){
         ProductDaoImpl pi= new ProductDaoImpl();
        Product p = pi.get(1);
        Basket b=pm.get(1);
       ClProdBasket cl=b.getProdBasket().get(p);
       ClProdBasketDaoImpl cla= new ClProdBasketDaoImpl();
       cla.deleteObject(cl);
       
    }
  
    
    
}

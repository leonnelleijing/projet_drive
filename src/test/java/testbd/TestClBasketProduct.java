/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testbd;

import com.samrtsolutions.drive.model.Basket;
import com.samrtsolutions.drive.model.ClProdBasket;
import com.samrtsolutions.drive.model.CliProdBasketId;
import com.samrtsolutions.drive.model.Family;
import com.samrtsolutions.drive.model.Product;
import com.samrtsolutions.drive.model.Rayon;
import com.samrtsolutions.drive.repository.BasketDaoImpl;
import com.samrtsolutions.drive.repository.ClProdBasketDaoImpl;
import com.samrtsolutions.drive.repository.ProductDaoImpl;
import com.samrtsolutions.drive.repository.RayonDaoImpl;
import java.util.ArrayList;
import java.util.Set;
import org.junit.Test;
import static org.junit.Assert.*;
import org.junit.Ignore;

/**
 *
 * @author leonl
 */
public class TestClBasketProduct {
    
    public TestClBasketProduct() {
    }
    
    
    @Test 
    @Ignore
    public void testAddProductToBasket(){
       BasketDaoImpl im= new BasketDaoImpl();
       Basket b= im.get(1);
       ProductDaoImpl po = new ProductDaoImpl();
       Product p= po.get(2);
       CliProdBasketId ids= new CliProdBasketId(p.getProductCode(),b.getIdBasket());
       ClProdBasket prod = new ClProdBasket(ids,3);
       b.getProdBasket().put(p, prod);
       im.edit(b);
       

        
    }
    
}

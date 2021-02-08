/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testbd;

import com.samrtsolutions.drive.model.Product;
import com.samrtsolutions.drive.repository.ProductDaoImpl;
import org.junit.Test;

/**
 *
 * @author leonl
 */
public class TestProductImplement {
    
    public TestProductImplement() {
    }
    
    @Test
    public void testAddProduct(){
        Product p1 = new Product("Pomme",3,2,200,"Pomme du sud","Gramme","31AAA","","Maroc","Carrefour","Carrefour");
        Product p2 = new Product("Pomme française",3,2,200,"Pomme du sud","Gramme","31AAA","","Maroc","Carrefour","Carrefour");
        Product p3 = new Product("Pomme espagnole",3,2,200,"Pomme du sud","Gramme","31AAA","","Maroc","Carrefour","Carrefour");
        ProductDaoImpl pi= new ProductDaoImpl();
        pi.edit(p1);
        pi.edit(p2);
        pi.edit(p3);
        pi.getTransaction().commit();
    }
    
    @Test
    public void testGetProduct(){
        ProductDaoImpl pi= new ProductDaoImpl();
        System.out.println(pi.get(1).getProductName());
    }
}

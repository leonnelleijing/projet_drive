/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testbd;

import com.samrtsolutions.drive.model.Label;
import com.samrtsolutions.drive.model.Product;
import com.samrtsolutions.drive.repository.ProductDaoImpl;
import java.awt.image.BufferedImage;

import java.io.File;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.imageio.ImageIO;
import org.junit.Ignore;

import org.junit.Test;
import static testbd.TestLabel.labelImpl;

/**
 *
 * @author leonl
 */
public class TestProductImplement {
    
    public TestProductImplement() {
    }
    private static ProductDaoImpl pi= new ProductDaoImpl();
    
    @Test
    @Ignore
    public void testAddProduct(){
        Product p1 = new Product("Pomme","3",2,200,"Pomme du sud","Gramme","31AAA","","Maroc","Carrefour","Carrefour","..\\ProductImages\\pomme.jpg","A");
        Product p2 = new Product("Pomme française","3",2,200,"Pomme du sud","Gramme","31AAA","","Maroc","Carrefour","Carrefour","..\\ProductImages\\pomme.jpg","B");
        Product p3 = new Product("Pomme espagnole","3",2,200,"Pomme du sud","Gramme","31AAA","","Maroc","Carrefour","Carrefour","..\\ProductImages\\pomme.jpg","A");
        pi.edit(p1);
        pi.edit(p2);
        pi.edit(p3);
        //pi.getTransaction().commit();
    }
    
    @Test
    public void testGetProduct(){
        System.out.println(pi.get(1).getProductName());
    }
    
    @Test 
    public void testGetAllProduct(){
       for(Product p: pi.getAllProduct()){
           System.out.println(p.getProductName());
       }
    }
    
    @Test
    @Ignore
    public void testGetProductImage(){
       String url =  pi.get(1).getImage();
       System.out.print(url);
    }
    
    
    @Test 
    @Ignore
    public void addLabelToProduct(){
        Label l =labelImpl.get(3);
        Product p=pi.get(2);
        pi.addLabel(p, l);
    }

}

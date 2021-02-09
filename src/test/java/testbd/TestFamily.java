/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testbd;

import com.samrtsolutions.drive.model.Family;
import com.samrtsolutions.drive.model.Product;
import com.samrtsolutions.drive.model.Rayon;
import com.samrtsolutions.drive.repository.FamilyDaoImpl;
import com.samrtsolutions.drive.repository.RayonDaoImpl;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
import org.junit.Test;
import static org.junit.Assert.*;
import org.junit.Ignore;

/**
 *
 * @author leonl
 */
public class TestFamily {
    public static FamilyDaoImpl familyImpl= new FamilyDaoImpl();
    public TestFamily() {
    }
    
    @Test 
    @Ignore
    public void testAddFamily(){
        RayonDaoImpl rayon= new RayonDaoImpl();
        Rayon r = rayon.get(1);
        Family family= new Family ("Epice Orient Bio",r);
        familyImpl.edit(family);
    }
    
    @Test 
    @Ignore
    public void testUpdateFamily(){
         Family family=familyImpl.get(2);
         family.setParentFamily(familyImpl.get(1));
         familyImpl.edit(family);
    }
    
    @Test
    public void testGetAllPrentFamily(){
        ArrayList<Family> parents = familyImpl.getAllParentFamilies();
        for(Family f: parents){
            System.out.println(f.getNomFamily());
        }
    }
    
    @Test 
    public void getChildFamily(){
        Family family=familyImpl.get(5);
        Set<Family> fs= family.getChildFamilies();
        for(Family f: fs){
             System.out.println(f.getNomFamily());
        }
    }
    
    @Test
    public void testGetAllProductsByFamily(){
        Family family=familyImpl.get(29);
        System.out.print(family.getParentFamily()==null);
        
    }
    
    
    @Test
    public void testGetChildProductsByFamily(){
         Set<Product> list = new HashSet<Product>();
        Family family=familyImpl.get(29);
        System.out.println(family.getParentFamily()==null);
        if(family.getParentFamily()==null){
            for(Family f: family.getChildFamilies()){
                    list.addAll(f.getChildProducts());
            }
        }else{
             list=familyImpl.getChildProductsByFamily(family);
        }
         System.out.print(list);
    }
}

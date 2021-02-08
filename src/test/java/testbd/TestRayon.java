/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testbd;

import com.samrtsolutions.drive.model.Family;
import com.samrtsolutions.drive.model.Rayon;
import com.samrtsolutions.drive.repository.RayonDaoImpl;
import java.util.ArrayList;
import java.util.Set;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author leonl
 */
public class TestRayon {
    
    public TestRayon() {
    }
    public static RayonDaoImpl rayon= new RayonDaoImpl();
    
    @Test 
    public void testRayonAddRayon(){
        Rayon r = new Rayon ("Fruit");
        rayon.edit(r);
    }
    
    @Test 
    public void testGetFamilies(){
        Set<Family> families= rayon.get(1).getFamilies();
        for(Family f:  families){
              Set<Family> childs=f.getChildFamilies();
              for(Family c: childs){
                System.out.println( c.getNomFamily());
              }
        }
    }
    
    @Test 
    public void testRayonGetAllRayon(){

        ArrayList<Rayon> rayons= rayon.getAllRayons();
        for(Rayon r:rayons ){
            System.out.println(r.getLibelleRayon());
        }
    }
    
}

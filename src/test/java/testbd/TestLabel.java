/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testbd;

import com.samrtsolutions.drive.model.Label;
import com.samrtsolutions.drive.repository.LabelDaoImpl;
import com.samrtsolutions.drive.repository.ProductDaoImpl;
import org.junit.Test;
import static org.junit.Assert.*;
import org.junit.Ignore;

/**
 *
 * @author leonl
 */
public class TestLabel {
    
    public static LabelDaoImpl labelImpl= new LabelDaoImpl();
    private static ProductDaoImpl pi= new ProductDaoImpl();
    
    public TestLabel() {
    }
    
    @Test
    @Ignore
    public void addLabel(){
        Label l= new Label("Ecocert","../images/label/ecocert.png");
        labelImpl.edit(l);
    }
    
    @Test   
    public void addLabelToProduct(){
        Label l =labelImpl.get(3);
        pi.get(2).addLabel(l);
    }
    
    @Test 
    public void testGetLabelsByProduct(){
         for(Label l :pi.get(3).getLabels()){
             System.out.println(l.getImageLabel());
         }
    }
    
}

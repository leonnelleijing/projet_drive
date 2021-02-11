/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package testbd;

import com.samrtsolutions.drive.model.Client;
import com.samrtsolutions.drive.repository.ClientDaoImpl;
import org.junit.Test;
import static org.junit.Assert.*;
import org.junit.Ignore;

/**
 *
 * @author leonl
 */
public class TestClient {
    private static ClientDaoImpl cli= new ClientDaoImpl();
    public TestClient() {
    }
    
    @Test
    @Ignore
    public void addNewClient(){
        Client c= new Client("Dupond","Claire","claire@gmail.com","30","Aveunue de Muret","","31000","Toulouse","0660308877");
        cli.edit(c);
    }
}

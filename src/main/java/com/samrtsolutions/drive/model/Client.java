/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.model;

import java.util.ArrayList;

/**
 *
 * @author cheny
 */
public class Client {
    
    // propriétés
    private int idClient;
    private String lastNameClient;
    private String firstNameClient;
    private String mailClient;
    private ArrayList<String> preferenceClient;
    private String numStreetClient;
    private String nameStreetClient;
    private String roadClient;
    private String numPostClient;
    private String cityClient;
    private String telClient;
    
    
    // Constructor

    public Client() {
    }

    public Client(String lastNameClient, String firstNameClient, String mailClient, ArrayList<String> preferenceClient, String numStreetClient, String nameStreetClient, String roadClient, String numPostClient, String cityClient, String telClient) {
        this.lastNameClient = lastNameClient;
        this.firstNameClient = firstNameClient;
        this.mailClient = mailClient;
        this.preferenceClient = preferenceClient;
        this.numStreetClient = numStreetClient;
        this.nameStreetClient = nameStreetClient;
        this.roadClient = roadClient;
        this.numPostClient = numPostClient;
        this.cityClient = cityClient;
        this.telClient = telClient;
    }
    
    
    // Getter & Setter

    public int getIdClient() {return idClient;}
    public void setIdClient(int idClient) {this.idClient = idClient;}

    public String getLastNameClient() {return lastNameClient;}
    public void setLastNameClient(String lastNameClient) {this.lastNameClient = lastNameClient;}

    public String getFirstNameClient() {return firstNameClient;}
    public void setFirstNameClient(String firstNameClient) {this.firstNameClient = firstNameClient;}

    public String getMailClient() {return mailClient;}
    public void setMailClient(String mailClient) {this.mailClient = mailClient;}

    public ArrayList<String> getPreferenceClient() {return preferenceClient;}
    public void setPreferenceClient(ArrayList<String> preferenceClient) {this.preferenceClient = preferenceClient;}

    public String getNumStreetClient() {return numStreetClient;}
    public void setNumStreetClient(String numStreetClient) {this.numStreetClient = numStreetClient;}

    public String getNameStreetClient() {return nameStreetClient;}
    public void setNameStreetClient(String nameStreetClient) {this.nameStreetClient = nameStreetClient;}

    public String getRoadClient() {return roadClient;}
    public void setRoadClient(String roadClient) {this.roadClient = roadClient;}

    public String getNumPostClient() {return numPostClient;}
    public void setNumPostClient(String numPostClient) {this.numPostClient = numPostClient;}

    public String getCityClient() {return cityClient;}
    public void setCityClient(String cityClient) {this.cityClient = cityClient;}

    public String getTelClient() {return telClient;}
    public void setTelClient(String telClient) {this.telClient = telClient;}
    
    
    // Equals() & HashCode()

    @Override
    public int hashCode() {
        int hash = 3;
        hash = 97 * hash + this.idClient;
        return hash;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Client other = (Client) obj;
        if (this.idClient != other.idClient) {
            return false;
        }
        return true;
    }
    
    
    // toString

    @Override
    public String toString() {
        return "Client{" + "idClient=" + idClient + ", lastNameClient=" + lastNameClient + ", firstNameClient=" + firstNameClient + ", mailClient=" + mailClient + ", preferenceClient=" + preferenceClient + ", numStreetClient=" + numStreetClient + ", nameStreetClient=" + nameStreetClient + ", roadClient=" + roadClient + ", numPostClient=" + numPostClient + ", cityClient=" + cityClient + ", telClient=" + telClient + '}';
    }
    
    
}

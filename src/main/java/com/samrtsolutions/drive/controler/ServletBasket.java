/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.controler;

import com.samrtsolutions.drive.model.Basket;
import com.samrtsolutions.drive.model.ClProdBasket;
import com.samrtsolutions.drive.model.CliProdBasketId;
import com.samrtsolutions.drive.model.Label;
import com.samrtsolutions.drive.model.Product;
import com.samrtsolutions.drive.repository.BasketDaoImpl;
import com.samrtsolutions.drive.repository.ClProdBasketDaoImpl;
import com.samrtsolutions.drive.repository.ProductDaoImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author cheny
 */
public class ServletBasket extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
            HttpSession session = request.getSession();
            String action = request.getParameter("action");
            BasketDaoImpl b = new BasketDaoImpl(); 
            ProductDaoImpl p = new ProductDaoImpl();
            Basket ba= (Basket) session.getAttribute("panier");
            switch(action)
            {
                case "getBasket":
                    String idPanierString = request.getParameter("idPanier");
                    //System.out.println(idPanierString);
                    int idPanier = Integer.valueOf(idPanierString);
                    Basket basket = b.get(idPanier);               
                    session.setAttribute("panier", basket);                      
                    try {
                        RequestDispatcher rd = request.getRequestDispatcher("panier");
                        rd.forward(request, response);
                    } catch (Exception e) {
                        request.setAttribute("Erreur", basket.toString());
                        RequestDispatcher rd = request.getRequestDispatcher("accueil");
                        rd.forward(request, response);
                    }
                break;  

//              break;       }
                case "addToBasket": 
                    
                    String idProduitString = request.getParameter("idProduit");
                    String quan= request.getParameter("quantity");
                     if(quan==null||quan=="")
                         quan="1";
                    int idProduit = Integer.parseInt(idProduitString);
                   Product produit = p.get(idProduit);
                   ClProdBasket codes = new ClProdBasket(new CliProdBasketId(produit.getProductCode(),1),Integer.valueOf(quan));
                   ba.getProdBasket().put(produit, codes);
                   b.edit(ba);
                   session.setAttribute("panier", ba);
                   
                break;
                
                case "changeQuantity": 
                   String quantity= request.getParameter("quantite");
                   String idProduct= request.getParameter("idProduct");
                   if(quantity!=null && quantity!=""&&idProduct!=null&&idProduct!=""){
                        ClProdBasket newLigne = new ClProdBasket(new CliProdBasketId(Integer.valueOf(idProduct),1),Integer.valueOf(quantity));
                        Product addProduit = p.get(Integer.valueOf(idProduct));
                        ba.getProdBasket().put(addProduit, newLigne);
                        b.edit(ba);
                        session.setAttribute("panier", ba);
                   }
                break;
                
                case "supprimerProduct":
                   String idProductSUpprim= request.getParameter("idProduct");
                   if(idProductSUpprim!=null&&idProductSUpprim!=""){
                        Product supprimeProduit = p.get(Integer.valueOf(idProductSUpprim));
                        //supprimer session ligne
                        ClProdBasket supprimeLigne= ba.getProdBasket().get(supprimeProduit);
                        ClProdBasketDaoImpl cla= new ClProdBasketDaoImpl();
                        cla.deleteObject(supprimeLigne);
                        
                        ba.getProdBasket().remove(supprimeProduit);
                        session.setAttribute("panier", ba);
                   }
                  break;
                   
            }
            
           
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(ServletBasket.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.controler;

import com.samrtsolutions.drive.model.Basket;
import com.samrtsolutions.drive.model.Label;
import com.samrtsolutions.drive.model.Product;
import com.samrtsolutions.drive.repository.BasketDaoImpl;
import com.samrtsolutions.drive.repository.ProductDaoImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
            String action; 
            
            
            action = request.getParameter("action");
            
        
            switch(action)
            {
                case "getBasket":
                    String idPanierString = request.getParameter("idPanier");
                    int idPanier = Integer.parseInt(idPanierString);
                        /*----- Type de la réponse -----*/
                        response.setContentType("application/xml;charset=UTF-8");
                        response.setCharacterEncoding("UTF-8");

                        
                        
                        BasketDaoImpl panier = new BasketDaoImpl();

                        try (PrintWriter out = response.getWriter()) {

                        Basket basket = panier.get(idPanier);               

                        Set<Product> lstP = basket.getLstProduct();

                        /*----- Ecriture de la page XML -----*/
                            out.println("<?xml version=\"1.0\"?>");
                            out.println("<donnees>");
                               try {
                                   for(Product p:lstP)
                                   {
                                   out.println("<produit>");
                                   out.println("<code>"+ p.getProductCode() + "</code>");
                                   out.println("<image>"+ p.getImage()+ "</image>"); 
                                   out.println("<nom>"+ p.getProductName()+ "</nom>");                            
                                   out.println("<marque>"+ p.getProductBrandProprietary()+ "</marque>");
                                   out.println("<priceUnit>"+ p.getProductUnitPrice()+ "</priceUnit>");
                                   out.println("<priceWeight>"+ p.getProductKiloPrice()+ "</priceWeight>"); 
                                       for (Label lab : p.getLabels()) {
                                           out.println("<labels>");
                                           out.println("<labelName>"+ lab.getNameLable()+ "</labelName>");
                                           out.println("<labelImage>"+ lab.getImageLabel()+ "</labelImage>");
                                           out.println("</labels>");
                                       }
                                   out.println("</produit>");
                                   }
                               out.println("</donnees>");

                               } catch (Exception e) {
                                   out.println("<p> Exception : " + e.getMessage() + "</p>");
                               }
                    break;
            }
                case "addToBasket": 
                    
                    String idProduitString;
                    idProduitString = request.getParameter("idProduit");
            
                    int idProduit = Integer.parseInt(idProduitString);
                    
                    System.out.println("---------------"+idProduit);
                   ProductDaoImpl p = new ProductDaoImpl();
                   BasketDaoImpl b = new BasketDaoImpl();
                   Product produit = p.get(idProduit);
                   Basket basket = b.get(1);
                   BasketDaoImpl.addProductBasket(produit, basket);
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

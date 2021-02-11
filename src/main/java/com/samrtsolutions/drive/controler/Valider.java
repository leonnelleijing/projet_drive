/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.controler;

import com.samrtsolutions.drive.model.Basket;
import com.samrtsolutions.drive.model.ClProdBasket;
import com.samrtsolutions.drive.model.Client;
import com.samrtsolutions.drive.model.Commande;
import com.samrtsolutions.drive.model.Creneau;
import com.samrtsolutions.drive.model.EtatCommande;
import com.samrtsolutions.drive.model.LigneCommande;
import com.samrtsolutions.drive.model.Magasin;
import com.samrtsolutions.drive.model.Product;
import com.samrtsolutions.drive.repository.BasketDaoImpl;
import com.samrtsolutions.drive.repository.CommandeDaoImpl;
import com.samrtsolutions.drive.repository.CreneauDaoImpl;
import com.samrtsolutions.drive.repository.EtatCommandeImpl;
import com.samrtsolutions.drive.repository.MagasinDaoImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.logging.SimpleFormatter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author leonl
 */
public class Valider extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     * @throws java.text.ParseException
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException, ParseException {
           HttpSession session = request.getSession();
           Client client= (Client) session.getAttribute("client");
           Basket basket= (Basket) session.getAttribute("basket");
           String idCreneau = request.getParameter("idCreneau");
           String idMagasin = request.getParameter("idMagasin");
           String date= request.getParameter("dateRetrait");
           String confirmer= request.getParameter("action");
           if("confirmer"==confirmer)
               request.getRequestDispatcher("choix_Lieu_Horaire").forward(request, response) ;
          
           
            if(idCreneau==null||idCreneau==""){
                   request.setAttribute("error", "Choissiez votre crenaeu");
                   request.getRequestDispatcher("panier").forward(request, response) ;
            }
           
            if(idMagasin==null||idMagasin==""){
                request.setAttribute("error", "Choissiez votre magasin");
                request.getRequestDispatcher("panier").forward(request, response) ;
            }
            
            if(date==null||date==""){
                request.setAttribute("error", "Choissiez votre Date");
                request.getRequestDispatcher("panier").forward(request, response) ;
            }
           
            MagasinDaoImpl magasinimp= new MagasinDaoImpl();
            Magasin magasin= magasinimp.get(Integer.valueOf(idMagasin));
            
            EtatCommandeImpl etatimpl= new EtatCommandeImpl();
            EtatCommande etat=etatimpl.get(1);
           
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd-MM-yyyy");
            Date rightDate=simpleDateFormat.parse(date);
            CreneauDaoImpl creneuim= new CreneauDaoImpl();
            Creneau creneau= creneuim.get(Integer.valueOf(idCreneau));
          
            CommandeDaoImpl commandeImpl= new CommandeDaoImpl();
            
            commandeImpl.TransferPanierToCommande(basket, magasin, creneau, client, etat, rightDate);
            
            request.getRequestDispatcher("succes").forward(request, response) ;
           
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
        } catch (ParseException ex) {
            Logger.getLogger(Valider.class.getName()).log(Level.SEVERE, null, ex);
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
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(Valider.class.getName()).log(Level.SEVERE, null, ex);
        }
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

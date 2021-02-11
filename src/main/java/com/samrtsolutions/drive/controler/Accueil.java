/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.controler;

import com.samrtsolutions.drive.model.Family;
import com.samrtsolutions.drive.model.Product;
import com.samrtsolutions.drive.model.Rayon;
import com.samrtsolutions.drive.repository.FamilyDaoImpl;
import com.samrtsolutions.drive.repository.ProductDaoImpl;
import com.samrtsolutions.drive.repository.RayonDaoImpl;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author leonl
 */
public class Accueil extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
        ProductDaoImpl product=new ProductDaoImpl();
        List<Product> products= product.getAllProduct();
        HttpSession session = request.getSession();
        if(session.getAttribute("rayons")==null){
             RayonDaoImpl rayon= new RayonDaoImpl();
             ArrayList<Rayon> rayons= rayon.getAllRayons();
             session.setAttribute("rayons", rayons);
        }
        //voir si la ssession existe des rayons et des produits
        //System.out.print(session.getAttribute("nameproducts"));
        if(session.getAttribute("nameproducts")==null||session.getAttribute("nameproducts").equals("")){
            session.setAttribute("products", products);
        }

        String idfamily= request.getParameter("Idfamily");
        String idRayon= request.getParameter("idRayon");

        if(idfamily!=null&&idfamily!=""){
            FamilyDaoImpl familyImpl= new FamilyDaoImpl();
            Family f= familyImpl.get(Integer.valueOf(idfamily));
            request.setAttribute("familyName",f.getNomFamily());
            request.setAttribute("productFamilies",familyImpl.getChildProductsByFamily(f));
            request.getRequestDispatcher("family").forward(request, response) ;
        }else if(idRayon!=null&&idRayon!=""){
            RayonDaoImpl rayonImp= new RayonDaoImpl();
            Rayon r=rayonImp.get(Integer.valueOf(idRayon));
            request.setAttribute("familyName",r.getLibelleRayon());
            request.setAttribute("productFamilies", rayonImp.getChildProductsByFamily(r));
            request.getRequestDispatcher("family").forward(request, response) ;
        }else{
             request.getRequestDispatcher("home").forward(request, response) ;
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
        processRequest(request, response);
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
        processRequest(request, response);
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

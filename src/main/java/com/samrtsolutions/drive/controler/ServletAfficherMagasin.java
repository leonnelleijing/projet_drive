/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.controler;

import com.samrtsolutions.drive.model.Magasin;
import com.samrtsolutions.drive.repository.MagasinDaoImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author 33667
 */
public class ServletAfficherMagasin extends HttpServlet {

    protected void processRequest (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
		{
		/*----- Type de la réponse -----*/
		response.setContentType("application/xml;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		try (PrintWriter out = response.getWriter())
			{
			/*----- Ecriture de la page XML -----*/
			out.println("<?xml version=\"1.0\"?>");
			out.println("<liste_magasins>");

			/*----- Récupération des paramètres -----*/
			String codePostal = request.getParameter("codePostal");

                    try {
                            /*----- Lecture de liste de magasins dans la BD -----*/
                            MagasinDaoImpl magasinDao = new MagasinDaoImpl();
                            List<Magasin> listeMagasin = magasinDao.afficherMagasin(codePostal);

                            for (Magasin magasin : listeMagasin){
				out.println("<magasinCode>" + magasin.getCode() + "</magasinCode>");
                                out.println("<magasin>" + magasin.getNom() + ", " + magasin.getCodePostal() + ", "+magasin.getVille()+ ", " + magasin.getRue() +"</magasin>");
                            }
                        }
                    catch (Exception e)
			{
                            out.println("<magasin>Erreur - " + e.getMessage() + "</magasin>");
			}

                    out.println("</liste_magasins>");
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

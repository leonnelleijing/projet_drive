/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.samrtsolutions.drive.controler;

import com.samrtsolutions.drive.model.Creneau;
import com.samrtsolutions.drive.model.NiveauAfflux;
import com.samrtsolutions.drive.repository.CreneauDaoImpl;
import com.samrtsolutions.drive.repository.NiveauAffluxDaoImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Helmy
 */
public class ServletAfficherCreneaux extends HttpServlet {

    protected void processRequest (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
		{
		/*----- Type de la réponse -----*/
		response.setContentType("application/xml;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");
		try (PrintWriter out = response.getWriter())
			{
			/*----- Ecriture de la page XML -----*/
			out.println("<?xml version=\"1.0\"?>");
			out.println("<liste_creneaux>");

			/*----- Récupération des paramètres -----*/
			int codeMag = Integer.parseInt(request.getParameter("codeMagasin"));

                    try {
                            /*----- Lecture de liste de creneaux dans la BD -----*/
                            NiveauAffluxDaoImpl afflux = new NiveauAffluxDaoImpl();
                            List<NiveauAfflux> listeNiveauAfflux = afflux.afficherAfflux(codeMag);

                            for (NiveauAfflux niveauAff : listeNiveauAfflux){
                                out.println("<niveauAff><![CDATA[" + niveauAff.getNiveauAff() + "]]></niveauAff>");
                                out.println("<creneauCode><![CDATA[" + niveauAff.getCreneau().getCode() + "]]></creneauCode>");
				out.println("<creneau><![CDATA[" + niveauAff.getCreneau().getHoraire() + "]]></creneau>");
                            }
                        }
                    catch (Exception e)
			{
                            out.println("<creneau>Erreur - " + e.getMessage() + "</creneau>");
			}

                    out.println("</liste_creneaux>");
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

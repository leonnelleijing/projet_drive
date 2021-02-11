
package com.samrtsolutions.drive.controler;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.samrtsolutions.drive.repository.ListDaoImpl;

/**
 *
 * @author maxim
 */
public class ServletListAddWord extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
             /*----- Type de la réponse -----*/
 

        /*----- Type de la réponse -----*/
            response.setContentType("application/xml;charset=UTF-8");
            response.setCharacterEncoding("UTF-8");

	try (PrintWriter out = response.getWriter()){
            
            
            
             String mot = request.getParameter("itemToAdd");
             System.out.print(mot);
            ListDaoImpl l = new ListDaoImpl();
            
            int idList = Integer.parseInt(request.getParameter("idList"));
            String rst = l.addWord(mot,l.get(idList));
            /*----- Ecriture de la page XML -----*/
            out.println("<?xml version=\"1.0\"?>");
            out.println("<added-List>");
            
            /*----- Récupération des paramètres -----*/
            
            //var word = this.previousSibling.value;
            //var liste = this.getAttribute("name");
            
            
            
           
           // int liste = request.getParameter(mot)this.getAttribute("name");
           
           
           
            out.println("<word><![CDATA[ "+mot+"]]></word>");
            out.println("</added-List>");
      
  
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

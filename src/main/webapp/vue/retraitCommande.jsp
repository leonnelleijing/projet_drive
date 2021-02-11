<%-- 
    Document   : retraitCommande
    Created on : 10 févr. 2021, 11:35:14
    Author     : maxim
--%>


<%@page import="com.samrtsolutions.drive.model.Label"%>
<%@page import="com.samrtsolutions.drive.model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:includepage="/vue/Header.jsp">
    <jsp:param name="title" value="Retrait"/>
</jsp:include>

    
<div class="container-fluid">

    <div class="row">
        <%@ include file="/vue/Menu.jsp"%>
          <div class="col-md-10">
                <div class="row">
                    <div class="part1Bis">
                        <%@ include file="/vue/MenuHorisontal.jsp"%>
                        <div class="jumbotron2">
                            <div class="col-md-5" >
                                <h1> Finalisation de votre commande </h1>
                            </div>
                            
                        </div>
                    </div> 
                </div>
                        
                        <!--btn-creaneau-->
                                                               
                        
       <%
           out.print("<div class='row'>");
           
            Product p= (Product)request.getAttribute("product");                      
            out.print("<div class='row'>");
            out.print("<p>   </p>");
            out.print("</div>");
            out.print("<div class='row'>");
            out.print("<h3 class='titreRetrait2'> Choisissez un magasin de retrait: </h3> ");       
            out.print("</div>"); 
            out.print("<div class='row'>");
            out.print("<input  class='inputMagasin' id='saisieMagasin' type='text' placeholder='Veuillez écrire votre code postal'> ");       
            out.print("</div>"); 
            out.print("<div class='row'>");
            out.print("<select class='inputMagasin' id='lmagasins'><option>----<option></select> ");       
            out.print("</div>");
            
            out.print("<div class='row'>");
            out.print("<h3 class='titreRetrait'> Choisissez une date: </h3> ");       
            out.print("</div>"); 
            out.print("<div class='row'>");
            out.print("<h3 class='titreRetrait'> Choisissez un créneau: </h3> ");       
            out.print("</div>");   
            out.print("");  
                   
            out.print("");  
            out.print("");  
            out.print("");  
     
      %>
     
      </div>
     </div>
    </div>
  <%@ include file="/vue/Footer.jsp"%>

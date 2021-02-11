<%-- 
    Document   : PreparerCommande
    Created on : 9 févr. 2021, 21:04:11
    Author     : leonl
--%>

<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.Iterator"%>
<%@page import="com.samrtsolutions.drive.model.Family"%>
<%@page import="java.util.Map"%>
<%@page import="com.samrtsolutions.drive.model.Rayon"%>
<%@page import="java.util.Set"%>
<%@page import="com.samrtsolutions.drive.model.Product"%>
<%@page import="com.samrtsolutions.drive.model.Product"%>
<%@page import="com.samrtsolutions.drive.model.Commande"%>
<%@page import="com.samrtsolutions.drive.repository.CommandeDaoImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Préparer commande</title>
        <link rel="stylesheet" href="../CSS/style.css" />
    </head>
    <body>
        <div class="header-logo">
            <a href="accueil"> <img id="photoLogo" class=" text-center" src="../Img/logo.png"></a>
            <div class="row">
                <div class="col-12">
                    <h3 class=" text-center">Commande 0001</h3>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="container">
                <%
                    int idCommande= Integer.valueOf(request.getParameter("idCommande"));
                    
                    CommandeDaoImpl com= new CommandeDaoImpl();
                    Commande commande= com.get(idCommande);
                   Map<Rayon,Map<Family,Map<Product,Integer>>> donnes= com.getAllProductsByOrder(commande);
                %>
                <div class="card" style="margin-bottom: 20px;">
                    <%
                       for (Map.Entry<Rayon, Map<Family,Map<Product,Integer>>> entry : donnes.entrySet()) {
                            out.println("<div class='card-header text-white bg-primary'>"+entry.getKey().getLibelleRayon()+"</div>");
                            out.print("<div class='card-body'>");
                            Set<Entry<Family,Map<Product,Integer>>> families=entry.getValue().entrySet();
                            for(Entry<Family,Map<Product,Integer>> family:families){
                                out.print(" <div class='card card-family '>");
                                out.print(" <div class='card-header text-white bg-info'>"+family.getKey().getNomFamily()+"</div>");
                                out.print("<div class='card-body'>");
                                Set<Entry<Product,Integer>> setProduct=family.getValue().entrySet();
                                for(Entry<Product,Integer> p: setProduct){
                                    out.print(" <div class='card card-product'>");
                                    out.print(" <div class='card-header text-white bg-secondary'>"+p.getKey().getProductName()+"</div>");
                                    out.print("<table class='table'>");
                                    out.print("<tr> <td class='text-center'>EAN</td>");
                                    out.print(" <td class='text-center'><span>"+p.getKey().getProductEAN()+"</span> </td></tr>");
                                    out.print(" <tr><td class='text-center'>Quantité</td>");
                                    out.print("<td class='text-center'><span>"+p.getValue()+"</span> </td></tr>");
                                    out.print("<tr><td class='text-center'>  <a href='#' class='btn btn-preparer btn-info btn-hover-primary text-capitalize btn-prepare'>Préparer</a></td>");
                                    out.print("<td class='text-center'>  <a href='#' class='btn btn-warning btn-hover-primary text-capitalize btn-prepare'>Informer</a></td></tr>");
                                    out.print("</table></div>");
                                }
                                out.print("</div></div>");
                                
                            }
                            out.print("</div></div>");
                             
                        }  
                       
                    %>

        
        <div class="container">
           <div class="row">
               <button type="button" class="btn btn-light text-dark col-6"><a href="">Revenir</a></button>
               <button type="button" class="btn btn-dark col-6"><a href="" class="text-white ">Finir</a></button>
           </div>     
        </div>
 <script src="../js/jquery-3.5.1.min.js"></script>      
<script src="../js/little_js.js"></script>
    </body>
</html>

<%-- 
    Document   : Accueil
    Created on : 5 févr. 2021, 15:43:46
    Author     : 33667
--%>

<%@page import="java.util.List"%>
<%@page import="com.samrtsolutions.drive.model.Label"%>
<%@page import="com.samrtsolutions.drive.model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:includepage="/vue/Header.jsp">
    <jsp:param name="title" value="Accueil"/>
</jsp:include>

        
        <div class="container-fluid">
            
            <div class="row">
                <%@ include file="/vue/Menu.jsp"%>
                <div class="col-md-10">
                    <div class="part1">
                        <%@ include file="/vue/MenuHorisontal.jsp"%>
                        <div class="jumbotron">
                            <h1>Bienvenue!</h1>
                            <p class='txtHome'>Nous vous souhaitons de passer un agréable moment sur notre magasin drive.</p>
                            <p><a class="btn btn-primary btn-lg" href="http://localhost:8080/liste" role="button">Liste Course</a></p>
                        </div>
                        
                    </div> 
                    <div class="part3">
                        
                        <div class="title">
                            <h2>Liste Produits en promotions</h2>
                        </div>
                        <div class="lstPro">
                            <%
                               List<Product> products= (List) session.getAttribute("products");
                               for(Product p: products){
                                    out.print( "<div class='produit'>");
                                        out.print( "<div class='articleSpan'>");
                                            out.print( "<div class='niveau1'><span>En Promotion</span></div>");
                                            out.print("<div class='niveau2'>");
                                            out.print("<div class='namePro'><a href='/product?id="+p.getProductCode()+"'>"+p.getProductName()+"</a></div>");
                                            out.print("<div class='poids'><p>"+p.getProductWeight()+" "+ p.getProductFormat()+"</p></div>");
                                            out.print("<div class='prixPoid'><p>"+p.getProductKiloPrice()+"€/"+p.getProductKiloPriceUnit()+"</p></div></div>");
                                            out.print("<div class='niveau3'><img class='imagePro' src="+ p.getImage()+"></div>");
                                        out.print("</div>");
                                    out.print(" <div class='infos'>");
                                        out.print(" <div class='infoPromo'><p>1 acheté = 1 graduit</p></div>");
                                        out.print("<div class='infoPrix'> <div class='prix'><p>"+p.getProductUnitPrice()+"</p></div>");
                                 
                                        out.print("<div class='iconPanier'><img src='../Img/panier.png' style='height:20px; width: 20px'  onclick='addToBasket("+p.getProductCode()+")'  ></div></div>");
                                    out.print( "</div>");
                                         if(p.getLabels()!=null){
                                             out.print("<div class='my_label'>");
                                                for(Label l: p.getLabels()){
                                                    out.print("<img src='"+l.getImageLabel()+"'>");
                                                }
                                            }
                                    out.print( "</div></div>");
                                        
                               }
                            %>
                           
                        </div>      
                    </div>    
                </div>
            </div>
        </div>
            
        

 <%@ include file="/vue/Footer.jsp"%>
    
    
    

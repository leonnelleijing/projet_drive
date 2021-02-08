<%-- 
    Document   : Accueil
    Created on : 5 févr. 2021, 15:43:46
    Author     : 33667
--%>

<%@page import="com.samrtsolutions.drive.model.Label"%>
<%@page import="com.samrtsolutions.drive.model.Product"%>
<%@page import="com.samrtsolutions.drive.repository.ProductDaoImpl"%>
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
                            <p>Nous sommes l’entreprise Smart Solutions, créée le 22 Octobre 2001.Nous sommes une entreprise toulousaine composée de 100 personnes.</p>
                            <p><a class="btn btn-primary btn-lg" href="#" role="button">Liste Course</a></p>
                        </div>
                        
                    </div> 
                    <div class="part3">
                        
                        <div class="title">
                            <h2>Liste Produits</h2>
                        </div>
                        <div class="lstPro">
                            <%
                               ProductDaoImpl product=new ProductDaoImpl();
                               for(Product p: product.getAllProduct()){
                                    out.print( "<div class='produit'>");
                                        out.print( "<div class='articleSpan'>");
                                            out.print( "<div class='niveau1'><span>En Promotion</span></div>");
                                            out.print("<div class='niveau2'>");
                                            out.print("<div class='namePro'><a>"+p.getProductName()+"</a></div>");
                                            out.print("<div class='poids'><p>"+p.getProductWeight()+" "+ p.getProductFormat()+"</p></div>");
                                            out.print("<div class='prixPoid'><p>"+p.getProductKiloPrice()+"</p></div></div>");
                                            out.print("<div class='niveau3'><img class='imagePro' src="+ p.getImage()+"></div>");
                                        out.print("</div>");
                                    out.print(" <div class='infos'>");
                                        out.print(" <div class='infoPromo'><p>1 acheté = 1 graduit</p></div>");
                                        out.print("<div class='infoPrix'> <div class='prix'><p>"+p.getProductUnitPrice()+" €</p></div>");
                                        out.print("<div class='iconPanier'><img src='../Img/panier.png' style='height:30px; width: 30px'></div></div>");
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
    
    
    
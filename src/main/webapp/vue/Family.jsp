<%-- 
    Document   : Family
    Created on : 8 févr. 2021, 22:04:50
    Author     : leonl
--%>

<%@page import="com.samrtsolutions.drive.model.Label"%>
<%@page import="java.util.Set"%>
<%@page import="com.samrtsolutions.drive.model.Product"%>
<%@page import="com.samrtsolutions.drive.model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:includepage="/vue/Header.jsp">
    <jsp:param name="title" value="Family"/>
</jsp:include>

<div class="container-fluid">
     <div class="row">
        <%@ include file="/vue/Menu.jsp"%>
         <div class="col-md-10">
 
             <%@ include file="/vue/MenuHorisontal.jsp"%>
             <div class="part3">
                <div class="title">
                   <h2>${familyName}</h2>
                </div>
                <div class="sort_by_price row">
                            <div class="container form-select form-group">
                                <select name="sort_by_price" class ="sortBtn" id="sort_by_price">
                                    <option value="0">Default</option>
                                    <option value="1">Prix au kilo décroissant</option>
                                    <option value="2">Prix au kilo croissant</option>
                                    <option value="3">Prix décroissant</option>
                                    <option value="4">Prix croissant</option>
                                </select>
                            </div>
                </div>
             
             <div class="lstPro">
                 <%
                     Set<Product> products= (Set) request.getAttribute("productFamilies");
                     for(Product p : products){
                          out.print( "<div class='produit'>");
                                        out.print( "<div class='articleSpan'>");
                                            out.print( "<div class='niveau1'><span>En Promotion</span></div>");
                                            out.print("<div class='niveau2'>");
                                            out.print("<div class='namePro'><a href='/product?id="+p.getProductCode()+"'>"+p.getProductName()+"</a></div>");
                                            out.print("<div class='poids'><p>"+p.getProductWeight()+" "+ p.getProductFormat()+"</p></div>");
                                            out.print("<div class='prixPoid'><p class='kiloprice'><strong>"+p.getProductKiloPrice()+"</strong><span>€"+p.getProductKiloPriceUnit()+"</span></p></div></div>");
                                            out.print("<div class='niveau3'><img class='imagePro' src="+ p.getImage()+"></div>");
                                        out.print("</div>");
                                    out.print(" <div class='infos'>");
                                        out.print(" <div class='infoPromo'><p>1 acheté = 1 graduit</p></div>");
                                        out.print("<div class='infoPrix'> <div class='prix'><strong>"+p.getProductUnitPrice()+"</strong><span>€</span></div>");
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

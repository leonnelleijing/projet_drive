
<%@page import="java.util.Map"%>
<%@page import="java.util.Map.Entry"%>
<%@page import="com.samrtsolutions.drive.model.ClProdBasket"%>
<%-- 
    Document   : Accueil
    Created on : 5 févr. 2021, 15:43:46
    Author     : 33667
--%>

<%@page import="com.samrtsolutions.drive.model.ClProdBasket"%>
<%@page import="java.util.Map"%>
<%@page import="com.samrtsolutions.drive.model.Label"%>
<%@page import="java.util.Set"%>
<%@page import="com.samrtsolutions.drive.model.Basket"%>
<%@page import="com.samrtsolutions.drive.repository.BaseDaoImpl"%>
<%@page import="com.samrtsolutions.drive.model.Product"%>
<%@page import="com.samrtsolutions.drive.repository.ProductDaoImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Drive Accueil</title> 
        <link rel="stylesheet" href="/../CSS/panier_css.css">
        <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    </head>
    <body>
        <div class="container-fluid">           
            <div class="row">
                <%@ include file="/vue/Menu.jsp"%>
                <div class="col-md-10">
                    <div class="part1">
                        <%@ include file="/vue/MenuHorisontal.jsp"%>   
                    </div> 
                    <div class="part2">
                        <div class="title">
                            <h2>Mon Panier</h2>
                        </div>
                        <div class="nav">
                            <ul class="nav nav-tabs">
                                <li role="presentation" class="active"><a href="#">Tous mes articles</a></li>
                                <li role="presentation"><a href="#">Articles en promo</a></li>
                                <li role="presentation"><a href="#">Articles en rupture de stock</a></li>
                            </ul>
                            <div class="container-fluid">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="titlePrix">
                                            <button type="submit" class="btn btn-warning" style="color:#000; font-weight:Bold;">Régler</button>
                                            <span><p>Prix total à payer: </p><p class="prixLabel">175.68 $</p></span>
                                        </div>
                                    </div>
                                </div>
                            </div>                      
                        </div>
                    </div>    
                    <div class="inter">
                        
                        <div class="container-fluid">
                            <div class="row">
                                <div class="col-md-4" style="margin-top: 0.5%;">
                                    <form action="../servletBasket" method="GET">
                                        <input type="text" id="idPanier" name="idPanier" size="20" maxlength="20" value="${param.idPanier}"/>
                                        <button type="submit" name="action" value="getBasket">Envoyer</button>
                                    </form>
                                    
                                    Informations de l'article</div>
                                <div class="col-md-2" style="margin-top: 0.5%;">Prix UT</div>
                                <div class="col-md-2" style="margin-top: 0.5%;">Quantité</div>
                                <div class="col-md-2" style="margin-top: 0.5%;">Prix TT</div>
                                <div class="col-md-2"><button class="btnSupprimePanier"><span class="glyphicon glyphicon-trash"> Vider tout </span></button></div>
                            </div>
                        </div>
                    </div>                  
                    <div class="part3">        
                        <div class="lstPro">
                            <div class="oneProduit">                               
<%                              
    
                                     Basket basket =(Basket)session.getAttribute("basket");
                                   
                                    
                                     if(basket!=null){
                                           Map<Product, ClProdBasket> ProdBasket =basket.getProdBasket();
                                     
                                       for(Map.Entry<Product, ClProdBasket> products : ProdBasket.entrySet()){
                                        out.print("<div class='produit'>");
                                            out.print("<div class='container-fluid'>");
                                                out.print("<div class='row'>");
                                                    out.print("<div class='col-md-2'>");
                                                        out.print("<div class='photoProduit' id='photoProduit'>" + "<img class='imagePro' src='" + products.getKey().getImage() + "'></div>");
                                                    out.print("</div>");

                                                    out.print("<div class='col-md-3'>");
                                                        out.print("<div class='InfoProduit' id='InfoProduit'><p>" + products.getKey().getProductName() + "</p></div>");
                                                        out.print("<div class='InfoProduit2' id='InfoProduit2'><p>" + products.getKey().getProductBrandProprietary() + "</p></div>");
                                                        for (Label lab : products.getKey().getLabels()) {
                                                            out.print("<div class='icon'>" + "<img src='" + lab.getImageLabel() + "' style='float:left; width: 15px; height: 15px;'></div>");
                                                        }
                                                    out.print("</div>");
                                                    out.print("<div class='col-md-2'>");
                                                        out.print("<div class='prixUniProduit'><p><span class='unitPirce'>" + products.getKey().getProductUnitPrice() + "</span> €</p></div>");
                                                    out.print("</div>");
                                                    out.print("<div class='col-md-3'>");
                                                        out.print("<div class='qteProduit'>");
                                                            //out.print("<form method='GET' action='../servletBasket'>");
                                                            
                                                                out.print("<input class='produitId' type='hidden' name='produitId' value='" + products.getKey().getProductCode() + "'/>");
                                                                out.print("<button class='btnMin' class='on-number' data-v='-1' name='" + products.getKey().getProductUnitPrice() + "'><span class='glyphicon glyphicon-minus'></span></button>");
                                                                out.print("<input class='inputPrix' name='inputPrix' type='number' value='"+products.getValue().getQuantityProd()+"' min='0' max='100' step='1'/>");
                                                                out.print("<button class='btnMax' class='on-number' data-v='1'><span class='glyphicon glyphicon-plus'></span></button>");                                                                
                                                            //out.print("</form>");
                                                        out.print("</div>");
                                                    out.print("</div>");               
                                                    out.print("<div class='col-md-1'>");
                                                        out.print("<div class='prixTtProduit' id='prixTtProduit'><p class='singlePriceTotal'>" + products.getKey().getProductUnitPrice() + " €</p></div>");
                                                    out.print("</div>");
                                                    out.print("<div class='col-md-1'>");
                                                        out.print("<div class='suppression'> <button class='glyphicon glyphicon-trash supprimer-product'></button></div>");
                                                    out.print("</div>");
                                                out.print("</div>");
                                            out.print("</div>");
                                        out.print("</div>");
                                    }  
                                     }
                                                                                 
%>                                
                        </div>       
                    </div>                 
                </div> 
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="pointPromo">
                                    <div class="Point1">
                                        <div class="input-group input-group-sm">
                                            <span class="input-group-addon" id="sizing-addon3">Points Fidelité :</span>
                                            <input type="text" class="form-control" placeholder="100" valur="100" aria-describedby="sizing-addon3" disabled="true" style="z-index:-1;">
                                         </div>
                                    </div>
                                    <div class="point2">
                                        <div class="input-group input-group-sm">
                                            <span class="input-group-addon" id="sizing-addon3">Vous voulez utiliser :</span>
                                            <input type="text" class="form-control" placeholder="Nombre de points" aria-describedby="sizing-addon3" style="z-index:1;">
                                         </div>
                                    </div>
                                </div>                             
                            </div>
                            <div class="col-md-6">                                
                                <div class="Economise">
                                   <div class="Point3">
                                        <div class="input-group input-group">
                                            <span class="input-group-addon" id="sizing-addon2">Vous avez économisé :</span>
                                            <input type="text" class="form-control" placeholder="100 $" valur="100" aria-describedby="sizing-addon2" disabled="true" style="z-index:-1;">
                                         </div>
                                   </div> 
                                </div>
                                <div class="titlePrix">
                                    <a href="/choix_Lieu_Horaire" class="btn btn-warning" style="color:#000; font-weight:Bold;">Régler</a>
                                    <span><p>Prix total à payer: </p><p class="prixLabel">975.68 $</p></span>
                                </div>
                            </div>
                        </div>
                    </div>           
            </div>
        </div>
        </div>     
         <%@ include file="/vue/Footer.jsp"%>
    </body>

   <%@ include file="/vue/Footer.jsp"%>

    


<%@page import="java.util.Map"%>
<%@page import="java.util.Map.Entry"%>
<%@page import="com.samrtsolutions.drive.model.ClProdBasket"%>
<%-- 
    Document   : Accueil
    Created on : 5 févr. 2021, 15:43:46
    Author     : 33667
--%>

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
                        <div class="lstPro">
            </div>
        </div>
                                <div class="col-md-2">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                          Sélectionne tous
                                        </label>
                                    </div>
                                </div>
                                <div class="col-md-4">Informations de l'article</div>
                                <div class="col-md-2">Prix unitaire</div>
                                <div class="col-md-1">Quantité</div>
                                <div class="col-md-2">Prix total</div>
                                <div class="col-md-1">Opération</div>
            <div class="container">
                <div class="row footer-top">
                    <div class="col-sm-12 col-lg-12 col-lg-offset-1">
                        <div class="row about">
                            <div class="col-xs-3">
                                <h4>About Us</h4>
                                <ul class="list-unstyled">
                                    <li>
                                        <a href="">Smart</a>
                                    </li>
                                    <li>
                                        <a href="">Informations entreprise</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-xs-3">
                                <h4>Strategies</h4>
                                <ul class="list-unstyled">
                                    <li>
                                        <a target="_blank" title="" href="">Anti-coVid19</a>
                                    </li>
                                    <li>
                                        <a href="">Livraison rapide</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-xs-3">
                                <h4>Connect Us</h4>
                                <ul class="list-unstyled">
                                    <li>
                                        <a target="_blank" title="" href="">Instagramm</a>
                                    </li>
                                    <li>
                                        <a href="">FaceBook</a>
                                    </li>
                                    <li>
                                        <a href="">Telephone</a>
                                    </li>
                                </ul>
                            </div>
                            <div class="col-xs-3">
                                <h4>Connect Magasin</h4>
                                <ul class="list-unstyled">
                                    <li>
                                        <a target="_blank" title="" href="">Adresse Magasin</a>
                                    </li>
                                    <li>
                                        <a href="">Telephone</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>        
                </div>
                <hr>
                <div class="row footer-bottom">
                    <ul class="list-inline text-center">
                        <li>Copyright &copy;2021. Smart Drive Software All Rights Reserved.</li>
                    </ul>
                </div>
            </div>
        </div>
    </body>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.4.1/dist/jquery.slim.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
                    </div>
                    
                    
                    
                    
                    
                    
                    
                    
                    <div class="part3">
                        
                        
</html>
                            <div class="oneProduit">                               
<%                              
                                     Map<Product,ClProdBasket> lstPro = (Map<Product,ClProdBasket>) request.getAttribute("listeProd");
                            
                                     if(lstPro != null){
                                         for (Map.Entry<Product,ClProdBasket> products : lstPro.entrySet()) {
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
                                                        out.print("<div class='prixUniProduit'><p>" + products.getKey().getProductUnitPrice() + "</p></div>");
                                                        out.print("<div class='prixUniProduit'><p>" + products.getKey().getProductKiloPrice() + "</p></div>");
                                                    out.print("</div>");
                                                    out.print("<div class='col-md-3'>");
                                                        out.print("<div class='qteProduit'>");
                                                            out.print("<button class='on-number' data-v = '-1'><span class='glyphicon glyphicon-minus'></span></button>");
                                                            out.print("<input id='inputPrix' type='number' name='inputPrix' value="+products.getValue().getQuantityProd()+" min='0' max='100' step='1' style='width:85px;'/>");
                                                            out.print("<button class='on-number' data-v = '1'><span class='glyphicon glyphicon-plus'></span></button>");
                                                        out.print("</div>");
                                                    out.print("</div>");               
                                                    out.print("<div class='col-md-1'>");
                                                        out.print("<div class='prixTtProduit'><p>" + "</p></div>");
                                                    out.print("</div>");
                                                    out.print("<div class='col-md-1'>");
                                                        out.print("<div class='suppression'> <button type='submit' class='glyphicon glyphicon-trash'></button></div>");
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
                                    <button type="submit" class="btn btn-warning" style="color:#000; font-weight:Bold;">Régler</button>
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

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.4.1/dist/jquery.slim.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script src="/../js/panier_js.js"></script>
</html>



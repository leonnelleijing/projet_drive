
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
<jsp:includepage="/vue/Header.jsp">
    <jsp:param name="title" value="Panier"/>
</jsp:include>

<div class="container-fluid">
     <div class="row">
        <%@ include file="/vue/Menu.jsp"%>
         <div class="col-md-10">
 
             <%@ include file="/vue/MenuHorisontal.jsp"%>         
                    <div class="part3">        
                        <div class="lstPro">
                            <div class="oneProduit">                               
<%                              
                                     Set<Product> lstPro = (Set<Product>) request.getAttribute("listeProd");
                                     if(lstPro != null){
                                         for (Product p : lstPro) {
                                        out.print("<div class='produit'>");
                                            out.print("<div class='container-fluid'>");
                                                out.print("<div class='row'>");
                                                    out.print("<div class='col-md-2'>");
                                                        out.print("<div class='photoProduit' id='photoProduit'>" + "<img class='imagePro' src='" + p.getImage() + "'></div>");
                                                    out.print("</div>");
                                                    out.print("<div class='col-md-3'>");
                                                        out.print("<div class='InfoProduit' id='InfoProduit'><p>" + p.getProductName() + "</p></div>");
                                                        out.print("<div class='InfoProduit2' id='InfoProduit2'><p>" + p.getProductBrandProprietary() + "</p></div>");
                                                        for (Label lab : p.getLabels()) {
                                                            out.print("<div class='icon'>" + "<img src='" + lab.getImageLabel() + "' style='float:left; width: 15px; height: 15px;'></div>");
                                                        }
                                                    out.print("</div>");
                                                    out.print("<div class='col-md-2'>");
                                                        out.print("<div class='prixUniProduit'><p>" + p.getProductUnitPrice() + "</p></div>");
                                                        out.print("<div class='prixUniProduit'><p>" + p.getProductKiloPrice() + "</p></div>");
                                                    out.print("</div>");
                                                    out.print("<div class='col-md-3'>");
                                                        out.print("<div class='qteProduit'>");
                                                            out.print("<button class='btnMin'><span class='glyphicon glyphicon-minus'></span></button>");
                                                            out.print("<input id='inputPrix' type='number' value='50' min='0' max='100' step='1'/>");
                                                            out.print("<button class='btnMax'><span class='glyphicon glyphicon-plus'></span></button>");
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
        <form action="../servletBasket" method="GET">
                                        <input type="text" id="idPanier" name="idPanier" size="20" maxlength="20" value="${param.idPanier}"/>
                                        <button type="submit" name="action" value="getBasket">Envoyer</button>
                                    </form>
    </body>

    <script src="https://cdn.jsdelivr.net/npm/jquery@3.4.1/dist/jquery.slim.min.js"></script>
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    <script src="/../js/panier_js.js"></script>
</html>


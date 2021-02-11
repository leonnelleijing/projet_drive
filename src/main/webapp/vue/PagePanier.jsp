
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
                <div class="col-md-2">
                    <div class="logo">
                        <image id="photoLogo" src="..\Img\logo.png">
                    </div>
                    <div class="menu">
                        <ul class="nav nav-pills nav-stacked">
                            <li class="maintip" role="presentation"><a href="#">Promotions</a></li>
                            <div class="tips">
                                <ul class="list-group">
                                    <li class="list-group-item">Toutes les promotions</li>
                                    <li class="list-group-item">Nouvel An Chinois</li>
                                    <li class="list-group-item">St Valentin</li>
                                    <li class="list-group-item">Maison nettoyée et rangée</li>
                                    <li class="list-group-item">Soldes jusqu'à - 70%</li>
                                    <li class="list-group-item">Bon plans INCROYABLES</li>
                                    <li class="list-group-item">Bons plans services</li>
                                </ul>
                            </div>
                            <li class="maintip" role="presentation"><a href="#">Jouets, laison, loisir</a></li>
                            <div class="tips">
                                <ul class="list-group">
                                    <li class="list-group-item">Jeux et jouets</li>
                                    <li class="list-group-item">Jeux vidéo et Culture</li>
                                    <li class="list-group-item">Electroménager</li>
                                    <li class="list-group-item">Informatique et Bureau</li>
                                    <li class="list-group-item">Smartphones et Objets Connectés</li>
                                    <li class="list-group-item">Image et Son</li>
                                    <li class="list-group-item">Maison et décoration</li>
                                    <li class="list-group-item">Sport et loisires</li>
                                </ul>
                            </div>
                            <li class="maintip" role="presentation"><a href="#">Bio et Ecologie</a></li>
                            <div class="tips">
                                <ul class="list-group">
                                    <li class="list-group-item">Bio à petit prix</li>
                                    <li class="list-group-item">Le Marché</li>
                                    <li class="list-group-item">Crèmerie</li>
                                    <li class="list-group-item">Frais et Surgelés</li>
                                    <li class="list-group-item">Epicerie salée</li>
                                    <li class="list-group-item">Epicerie sucrée</li>
                                    <li class="list-group-item">Boissons</li>
                                    <li class="list-group-item">Animaux</li>
                                </ul>
                            </div>
                            <li class="maintip" role="presentation"><a href="#">Fruits et légumes</a></li>
                            <div class="tips">
                                <ul class="list-group">
                                    <li class="list-group-item">Fruits</li>
                                    <li class="list-group-item">Légumes</li>
                                    <li class="list-group-item">Fruits et légumes Bio</li>
                                    <li class="list-group-item">Jus de fruits et Légumes frais</li>
                                    <li class="list-group-item">Prêt à consommer</li>
                                    <li class="list-group-item">Fruits et Légumes secs</li>
                                </ul>
                            </div>
                            <li class="maintip" role="presentation"><a href="#">Viandes et Poissons</a></li>
                            <div class="tips">
                                <ul class="list-group">
                                    <li class="list-group-item">Plats d'hivers</li>
                                    <li class="list-group-item">Colis de viandes</li>
                                    <li class="list-group-item">Boucherie</li>
                                    <li class="list-group-item">Boucherie bio</li>
                                    <li class="list-group-item">Volaille et Rôtisserie</li>
                                    <li class="list-group-item">Volaille bio</li>
                                    <li class="list-group-item">Poissonnerie</li>
                                    <li class="list-group-item">Poissonnerie bio</li>
                                    <li class="list-group-item">Traiteur de la mer</li>
                                </ul>
                            </div>
                            <li class="maintip" role="presentation"><a href="#">Pains et Pâtisseries</a></li>
                            <div class="tips">
                                <ul class="list-group">
                                    <li class="list-group-item">Pains frais</li>
                                    <li class="list-group-item">Pâtisseries</li>
                                    <li class="list-group-item">Viennoiseries et Brioches fraîches</li>
                                    <li class="list-group-item">Viennoiseries et Brioches</li>
                                    <li class="list-group-item">Boulangerie et Viennoiseries Bio</li>
                                    <li class="list-group-item">Pain de mie</li>
                                    <li class="list-group-item">Burser et précuits</li>
                                </ul>
                            </div>
                            <li class="maintip" role="presentation"><a href="#">Frais</a></li>
                            <div class="tips">
                                <ul class="list-group">
                                    <li class="list-group-item">Crèmerie</li>
                                    <li class="list-group-item">Yaourts et Desserts</li>
                                    <li class="list-group-item">Fromages à déguster</li>
                                    <li class="list-group-item">Fromages à cuisiner et Raclette</li>
                                    <li class="list-group-item">Traiteur</li>
                                    <li class="list-group-item">Charcuterie</li>
                                    <li class="list-group-item">Snacking et plats cuisinés</li>
                                    <li class="list-group-item">Végétarien et Végétal</li>
                                </ul>
                            </div>
                            <li class="maintip" role="presentation"><a href="#">Surgelé</a></li>
                            <div class="tips">
                                <ul class="list-group">
                                    <li class="list-group-item">Plats cuisinés</li>
                                    <li class="list-group-item">Pizzas</li>
                                    <li class="list-group-item">Viande et Volaille</li>
                                    <li class="list-group-item">Panés</li>
                                    <li class="list-group-item">Poissons et Crustacés</li>
                                    <li class="list-group-item">Pomme de terre et Frites</li>
                                    <li class="list-group-item">Légumes et Fruits</li>
                                    <li class="list-group-item">Surgelé traiteur</li>
                                    <li class="list-group-item">Glaces et Sorbets</li>
                                </ul>
                            </div>
                            <li class="maintip" role="presentation"><a href="#">Epicerie salée</a></li>
                            <div class="tips">
                                <ul class="list-group">
                                    <li class="list-group-item">Nouvel an Chinois</li>
                                    <li class="list-group-item">Soupes et Croutons</li>
                                    <li class="list-group-item">Les plats cuisinés</li>
                                    <li class="list-group-item">Pâtes, Riz et Féculents</li>
                                    <li class="list-group-item">Conserves et Bocaux</li>
                                    <li class="list-group-item">Pour l'apéritif</li>
                                    <li class="list-group-item">Huiles, Vinaigres et Vinaigrettes</li>
                                    <li class="list-group-item">Sauces et Condiments</li>
                                    <li class="list-group-item">Sel, Epices et Bouillons</li>
                                    <li class="list-group-item">Produits de Monde</li>
                                </ul>
                            </div>
                            <li class="maintip" role="presentation"><a href="#">Epicerie sucrée</a></li>
                            <div class="tips">
                                <ul class="list-group">
                                    <li class="list-group-item">Chandeleur</li>
                                    <li class="list-group-item">Boissons chaudes</li>
                                    <li class="list-group-item">Petit déjeuner</li>
                                    <li class="list-group-item">Biscuits et Gâteaux</li>
                                    <li class="list-group-item">Chocolats et Bonbons</li>
                                    <li class="list-group-item">Sucres, Farines, Coulis</li>
                                    <li class="list-group-item">Fruits au sirop et Crèmes desserts</li>
                                </ul>
                            </div>
                            <li class="maintip" role="presentation"><a href="#">Boissons</a></li>
                            <div class="tips">
                                <ul class="list-group">
                                    <li class="list-group-item">Eaux</li>
                                    <li class="list-group-item">Jus de fruits et Légumes</li>
                                    <li class="list-group-item">Colas, Thés glacés et Softs</li>
                                    <li class="list-group-item">Bières et Cidres</li>
                                    <li class="list-group-item">Cave à vins</li>
                                    <li class="list-group-item">Champagnes et Pétillants</li>
                                    <li class="list-group-item">Apéritifs</li>
                                </ul>
                            </div>
                            <li class="maintip" role="presentation"><a href="#">Electroménager</a></li>
                            <div class="tips">
                                <ul class="list-group">
                                    <li class="list-group-item">Chauffages et Climatisation</li>
                                    <li class="list-group-item">Cuisson et Robots</li>
                                    <li class="list-group-item">Lavage</li>
                                    <li class="list-group-item">Réfrigérateurs et Congélateurs</li>
                                    <li class="list-group-item">Petit déjeuner</li>
                                    <li class="list-group-item">Boisson</li>
                                    <li class="list-group-item">Entretien du sol</li>
                                    <li class="list-group-item">Soin du linge</li>
                                </ul>
                            </div>
                        </ul>
                    </div>                                
                </div>
                <div class="col-md-10">
                    <div class="part1">
                        <div class="partNav">
                            <nav class="navbar navbar-default">                              
                                  <!-- Brand and toggle get grouped for better mobile display -->
                                  <div class="navbar-header">
                                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                      <span class="sr-only">Toggle navigation</span>
                                      <span class="icon-bar"></span>
                                      <span class="icon-bar"></span>
                                      <span class="icon-bar"></span>
                                    </button>
                                    <a class="navbar-brand" href="#">My Drive</a>
                                  </div>

                                  <!-- Collect the nav links, forms, and other content for toggling -->
                                  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                    <ul class="nav navbar-nav">
                                      <li class="active"><a href="http://localhost:8080/Accueil.jsp">Home Page <span class="sr-only">(current)</span></a></li>
                                      <li><a href="#">Link</a></li>
                                      <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                                        <ul class="dropdown-menu">
                                          <li><a href="#">Action</a></li>
                                          <li><a href="#">Another action</a></li>
                                          <li><a href="#">Something else here</a></li>
                                          <li role="separator" class="divider"></li>
                                          <li><a href="#">Separated link</a></li>
                                          <li role="separator" class="divider"></li>
                                          <li><a href="#">One more separated link</a></li>
                                        </ul>
                                      </li>
                                    </ul>
                                    <form class="navbar-form navbar-left">
                                      <div class="form-group">
                                        <input type="text" class="form-control" placeholder="Search">
                                        <button type="submit" class="btn btn-default">Rechercher</button>
                                        <button class="btn"><span class="glyphicon glyphicon-shopping-cart">Panier</span></button>
                                      </div>                                    
                                    </form>
                                    <ul class="nav navbar-nav navbar-right">   
                                      <li class="navLi"><a href="#">Se connecter</a></li>                                     
                                    </ul>
                                  </div><!-- /.navbar-collapse -->
                                <!-- /.container-fluid -->
                              </nav>                             
                        </div>     
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
                                                        for (Label lab :  products.getKey().getLabels()) {
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
        <div class="footer">
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

   <%@ include file="/vue/Footer.jsp"%>

    

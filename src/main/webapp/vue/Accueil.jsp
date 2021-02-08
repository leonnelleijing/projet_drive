<%-- 
    Document   : Accueil
    Created on : 5 févr. 2021, 15:43:46
    Author     : 33667
--%>

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
                            
                            <div class="produit1">
                                <div class="articleSpan">
                                    <div class="niveau1"><span>En Promotion</span></div>
                                    <div class="niveau2">
                                        <div class="namePro"><a>Lait</a></div>
                                        <div class="poids"><p>500g</p></div>
                                        <div class="prixPoid"><p>1$/500Ml</p></div>
                                    </div>
                                    <div class="niveau3">
                                        <img class="imagePro" src="Img\lait.jfif" style="background-image:url(Img\\lait.jfif);">
                                    </div>
                                </div>
                                <div class="infos">
                                    <div class="infoPromo"><p>1 acheté = 1 graduit</p></div>
                                    <div class="infoPrix">
                                        <div class="prix"><p>2.00 $</p></div>
                                        <div class="iconPanier">
                                            <img src="Img\panier.png" style="height:30px; width: 30px">
                                        </div>
                                    </div>
                                </div>
                            </div>  
                            
                            <div class="produit1">
                                <div class="articleSpan">
                                    <div class="niveau1"><span>En Promotion</span></div>
                                    <div class="niveau2">
                                        <div class="namePro"><a>Air conditionnel</a></div>
                                        <div class="poids"><p>1 unité</p></div>
                                        <div class="prixPoid"><p>599$/Unité</p></div>
                                    </div>
                                    <div class="niveau3">
                                        <img class="imagePro" src="Img\airCondi.jfif" style="background-image:url(Img\\airCondi.jfif);">
                                    </div>
                                </div>
                                <div class="infos">
                                    <div class="infoPromo"><p>25% en promo</p></div>
                                    <div class="infoPrix">
                                        <div class="prix"><p>599.00 $</p></div>
                                        <div class="iconPanier">
                                            <img src="Img\panier.png" style="height:30px; width: 30px">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            
                            <div class="produit1">
                                <div class="articleSpan">
                                    <div class="niveau1"><span>En Promotion</span></div>
                                    <div class="niveau2">
                                        <div class="namePro"><a>Air conditionnel</a></div>
                                        <div class="poids"><p>1 unité</p></div>
                                        <div class="prixPoid"><p>599$/Unité</p></div>
                                    </div>
                                    <div class="niveau3">
                                        <img class="imagePro" src="Img\airCondi.jfif" style="background-image:url(Img\\airCondi.jfif);">
                                    </div>
                                </div>
                                <div class="infos">
                                    <div class="infoPromo"><p>25% en promo</p></div>
                                    <div class="infoPrix">
                                        <div class="prix"><p>599.00 $</p></div>
                                        <div class="iconPanier">
                                            <img src="Img\panier.png" style="height:30px; width: 30px">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="produit1">
                                <div class="articleSpan">
                                    <div class="niveau1"><span>En Promotion</span></div>
                                    <div class="niveau2">
                                        <div class="namePro"><a>Coca Cola (Original)</a></div>
                                        <div class="poids"><p>300ml</p></div>
                                        <div class="prixPoid"><p>0.25$/100ml</p></div>
                                    </div>
                                    <div class="niveau3">
                                        <img class="imagePro" src="Img\coca.jfif" style="background-image:url(Img\\coca.jfif);">
                                    </div>
                                </div>
                                <div class="infos">
                                    <div class="infoPromo"><p>1 acheté = 1 graduit</p></div>
                                    <div class="infoPrix">
                                        <div class="prix"><p>0.75 $</p></div>
                                        <div class="iconPanier">
                                            <img src="Img\panier.png" style="height:30px; width: 30px">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="produit1">
                                <div class="articleSpan">
                                    <div class="niveau1"><span>En Promotion</span></div>
                                    <div class="niveau2">
                                        <div class="namePro"><a>Macaron</a></div>
                                        <div class="poids"><p>500g</p></div>
                                        <div class="prixPoid"><p>4$/100g</p></div>
                                    </div>
                                    <div class="niveau3">
                                        <img class="imagePro" src="Img\macaron.jfif" style="background-image:url(Img\\macaron.jfif);">
                                    </div>
                                </div>
                                <div class="infos">
                                    <div class="infoPromo"><p>1 acheté = 25% de promo deuxième</p></div>
                                    <div class="infoPrix">
                                        <div class="prix"><p>20.00 $</p></div>
                                        <div class="iconPanier">
                                            <img src="Img\panier.png" style="height:30px; width: 30px">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="produit1">
                                <div class="articleSpan">
                                    <div class="niveau1"><span>En Promotion</span></div>
                                    <div class="niveau2">
                                        <div class="namePro"><a>Lait</a></div>
                                        <div class="poids"><p>500ml</p></div>
                                        <div class="prixPoid"><p>1$/250ml</p></div>
                                    </div>
                                    <div class="niveau3">
                                        <img class="imagePro" src="Img\lait.jfif" style="background-image:url(Img\\lait.jfif);">
                                    </div>
                                </div>
                                <div class="infos">
                                    <div class="infoPromo"><p>1 acheté = 1 graduit</p></div>
                                    <div class="infoPrix">
                                        <div class="prix"><p>2.00 $</p></div>
                                        <div class="iconPanier">
                                            <img src="Img\panier.png" style="height:30px; width: 30px">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="produit1">
                                <div class="articleSpan">
                                    <div class="niveau1"><span>En Promotion</span></div>
                                    <div class="niveau2">
                                        <div class="namePro"><a>Lait</a></div>
                                        <div class="poids"><p>500ml</p></div>
                                        <div class="prixPoid"><p>1$/250Ml</p></div>
                                    </div>
                                    <div class="niveau3">
                                        <img class="imagePro" src="Img\lait.jfif" style="background-image:url(Img\\lait.jfif);">
                                    </div>
                                </div>
                                <div class="infos">
                                    <div class="infoPromo"><p>1 acheté = 1 graduit</p></div>
                                    <div class="infoPrix">
                                        <div class="prix"><p>2.00 $</p></div>
                                        <div class="iconPanier">
                                            <img src="Img\panier.png" style="height:30px; width: 30px">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="produit1">
                                <div class="articleSpan">
                                    <div class="niveau1"><span>En Promotion</span></div>
                                    <div class="niveau2">
                                        <div class="namePro"><a>Coca Cola (Original)</a></div>
                                        <div class="poids"><p>300ml</p></div>
                                        <div class="prixPoid"><p>0.25$/100ml</p></div>
                                    </div>
                                    <div class="niveau3">
                                        <img class="imagePro" src="Img\coca.jfif" style="background-image:url(Img\\coca.jfif);">
                                    </div>
                                </div>
                                <div class="infos">
                                    <div class="infoPromo"><p>1 acheté = 1 graduit</p></div>
                                    <div class="infoPrix">
                                        <div class="prix"><p>0.75 $</p></div>
                                        <div class="iconPanier">
                                            <img src="Img\panier.png" style="height:30px; width: 30px">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            <div class="produit1">
                                <div class="articleSpan">
                                    <div class="niveau1"><span>En Promotion</span></div>
                                    <div class="niveau2">
                                        <div class="namePro"><a>Macaron</a></div>
                                        <div class="poids"><p>500g</p></div>
                                        <div class="prixPoid"><p>4$/100g</p></div>
                                    </div>
                                    <div class="niveau3">
                                        <img class="imagePro" src="Img\macaron.jfif" style="background-image:url(Img\\macaron.jfif);">
                                    </div>
                                </div>
                                <div class="infos">
                                    <div class="infoPromo"><p>1 acheté = 25% de promo deuxième</p></div>
                                    <div class="infoPrix">
                                        <div class="prix"><p>20.00 $</p></div>
                                        <div class="iconPanier">
                                            <img src="Img\panier.png" style="height:30px; width: 30px">
                                        </div>
                                    </div>
                                </div>
                            </div>
                            
                            
                    
                            
                    </div>      
                        
                </div>
            </div>
        </div>
            
            
            
            
            
            
            
            
            
        </div>
        
        
        <div class="footer ">
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
                                        <a target="_blank" title="" href="">Instagramme</a>
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
    
    
    
    
    

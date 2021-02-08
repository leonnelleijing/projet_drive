<%-- 
    Document   : Accueil
    Created on : 5 févr. 2021, 15:43:46
    Author     : 33667
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Drive Accueil</title> 
        <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <!-- 引入样式Element UI -->
        <link rel="stylesheet" href="https://unpkg.com/element-ui/lib/theme-chalk/index.css">
        <!-- 引入组件库Element U -->
        <script src="https://unpkg.com/element-ui/lib/index.js"></script>
    </head>
    
    <style>
        .row>div {
            height: auto;
            /*border: 1px #000 solid;*/
        }
        .logo{
            height: 100px;
            width: 190px;
            text-align: left;
            float: left;
        }
        #photoLogo{
            height: 90px;
            width: 170px;
            float: left;
        }
        
        .menu{
            margin-top: 10px;
            float: left;
        }
        
        .part1{
            height: auto;
            width: auto;            
            /*border: 1px #000 solid;*/
            background-image: url('Img\\accueil.jfif');
            background-repeat: no-repeat;
            background-size:100% 100%;

        }
        
        .part3{
            /*border: 1px #000 solid;*/
            height: auto;
            background-color: #f5f5f5;
            float: left;
        }
        
        .title{
            margin-top: 3%;
            text-align: left;
            margin-left: 5%;
            margin-bottom: 3%;
        }
        
        .produit1{
            background-color: #fff;
            box-shadow:0px 15px 10px -15px #000;
            width: 25%;
            height: 360px;
            margin: 3% 4% 3% 4%;
            float: left;
            
        }
        img{
            height: 100%;
            width: 100%;
            object-fit: cover;
            
        }
        
        .namePro{
            font-size: 18px;
            text-align: left;
            font-family:  inherit;
            color: #212529;
            margin: 8%;
        }
        
        .prix{
            font-size: 15px;
            color: red;
            font-weight: bold;
            margin-left: 10%;
            margin-top: 10%;
            float: left;
        }
        
        .poids{
            font-size: 12px;
            color: #06357a;
            margin: 0% 0% 4% 5%;
        }
        
        
        .prixPoid{
            font-size: 12px;
            color: #06357a;
            margin: 0% 0% 4% 5%;
        }
        
        .articleSpan{
            float: left;
            width: 100%;
        }
        
        .niveau1{
            background-color: #ffecb5;
            width: 100%;
        }
        
        .niveau1 span{
            font-size: 17px;
            text-align: center;
            font-style: italic;
            color: red;
            font-weight: bold;
            margin: 13% 9% 9% 9%;

        }
        
        /*
        .niveau2{
            float: left;
        }*/
        
        .niveau3{
            width: 100%;
            height: 120px;
            float: left;
            position: relative;
            z-index: 1;
        }
        
        .imagePro{
            background-size: cover;
            background-position: center;
            
            
        }
        
        .infos{
            float: left;
            width: 100%;
        }
        
        
        .infoPromo{
            background-color: #ffecb5;
        }
        
        .infoPromo p {
            font-size: 13px;
            font-family: cursive;
            color: red;
            font-weight: bold;
            text-align: center;
        }
        
        
        .infoPrix{
            display: inline;
            width: auto;
            margin-top: 9%;
        }
        
        .iconPanier{
            margin-right: 10%;
            margin-top: 7%;
            margin-bottom: 5%;
            float: right;
        }
        
        .lstPro{
            background-color: #f5f5f5;
            float: left;
        }
        
        /*.photoPro{
            background-size: contain;
        }*/
        
        .maintip{
            position:relative;
            z-index:1;
            /*border:1px solid #E5D1A1;*/
            text-align:center;
            /*width:200px;
            height:35px;
            line-height:30px;*/
            margin-left: 15px;

        }
        .tips{
            position:absolute;
            z-index:2;
            width:400px;
            height:auto;
            /*border:1px solid #E5D1A1;*/
            background:#fff;
            display:none;
        }
        .btn{
            margin-left: 5px;
        }
        
        
         .footer {
            border-top: 1px solid #e5e5e5;
            color: #777;
            padding: 19px 0;
            background-color: #f5f5f5;
            margin-top: 2%;
        }
        
        .titlePrix{
            margin-top: 3%;
            float: right;
            width: 100%;
        }
        .titlePrix>span{
            float: right;              
        }
        .titlePrix>span>p{
            float: right;
            margin: 1%;
            font-size: 16px;
            font-weight: bold;
        }
        .titlePrix>button{
            float: right;
            margin: 2%;     
        }
        
        .prixLabel{
            font-family: cursive;
            font-size: 25px;
            color: red;
            font-weight: bold;         
        }
        
        .inter{
            margin-top: 3%;
            padding: 2%;
        }
        .inter div{
            text-align: center;
        }
        
        .oneProduit{
            margin: 3%;
        }
        
        .dessusPro{
            margin-left: 2%;
        }
        
        
        
        .produit{
            height: auto;
            border: 2px #777 solid;
            padding: 3%;
        }
        
        .check{
            float: left;
            margin-top: 3%;
        }
        
        .photoProduit{
            float: left;
            margin-top: 1%;
        }
        
        .InfoProduit{
            float: left;
            margin-top: 1%;
        }
        
        
        .InfoProduit2{
            float: left;
            margin-top: 1%;
        }
        
        .prixUniProduit{
            float: left;
            margin-top: 1%;
        }
        
        .prixUniProduit p{
            font-size: 14px;
            font-weight: bold;
            color: red;
        }
        
        .qteProduit{
            float: left;
            margin-top: 1%;
        }
        
        .prixTtProduit{
            float: left;
            margin-top: 1%;
        }
        
        .prixTtProduit p{
            font-size: 14px;
            font-weight: bold;
            color: red;
        }
        
        .suppression{
            float: left;
            margin-top: 1%;
        }
        
    </style>
    <body>
        <!-- <h1>Bienvenue!</h1> -->
        
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
                            <div class="titlePrix">
                                <button type="submit" class="btn btn-info">Régler</button>
                                <span><p>Articles sélectionnés: </p><p class="prixLabel">175.68 $</p></span>
                                
                            </div>
                        </div>
   
                    </div>
                    
                    <div class="inter">
                        <div class="container-fluid">
                            <div class="row">
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
                            </div>
                        </div>
                    </div>
                    
                    
                    
                    
                    
                    
                    
                    
                    <div class="part3">
                        
                        
                        <div class="lstPro">
                            
                            
                            
                            <div class="oneProduit">
                               <div class="dessusPro">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                          Magasin : 
                                        </label>
                                        <span>Carrefour</span>
                                    </div>
                                </div>
                                <div class="produit">
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-md-1">
                                                <div class="check">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="photoProduit">
                                                    <img class="imagePro" src="..\Img\lait.jfif" style="background-image:url(..\\Img\\lait.jfif);">
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="InfoProduit">
                                                    <p>Boîte de lait japonaise</p>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="InfoProduit2">
                                                    <p>En promo : 1 achat = 1 graduit</p>
                                                </div>
                                            </div>
                                            <div class="col-md-1">
                                                <div class="prixUniProduit">
                                                    <p>2.00 $</p>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="qteProduit">
                                                    <input type="number" value="50" min="0" max="100" step="1"/>
                                                </div>
                                            </div>
                                            <div class="col-md-1">
                                                <div class="prixTtProduit">
                                                    <p>9.00 $</p>
                                                </div>
                                            </div>
                                            <div class="col-md-1">
                                                <div class="suppression">
                                                    <button type="submit" class="glyphicon glyphicon-trash"></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div> 
                            </div>
                            
                            
                                    
                             <div class="oneProduit">
                               <div class="dessusPro">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                          Magasin : 
                                        </label>
                                        <span>Carrefour</span>
                                    </div>
                                </div>
                                <div class="produit">
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-md-1">
                                                <div class="check">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="photoProduit">
                                                    <img class="imagePro" src="..\Img\airCondi.jfif" style="background-image:url(..\\Img\\airCondi.jfif);">
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="InfoProduit">
                                                    <p>Conditionneur d'air</p>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="InfoProduit2">
                                                    <p>En promo : soldes jusqu'à 75%</p>
                                                </div>
                                            </div>
                                            <div class="col-md-1">
                                                <div class="prixUniProduit">
                                                    <p>399.00 $</p>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="qteProduit">
                                                    <input type="number" value="50" min="0" max="100" step="1"/>
                                                </div>
                                            </div>
                                            <div class="col-md-1">
                                                <div class="prixTtProduit">
                                                    <p>399.00 $</p>
                                                </div>
                                            </div>
                                            <div class="col-md-1">
                                                <div class="suppression">
                                                    <button type="submit" class="glyphicon glyphicon-trash"></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div> 
                            </div>       
                                    
                                    
                            <div class="oneProduit">
                               <div class="dessusPro">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                          Magasin : 
                                        </label>
                                        <span>Carrefour</span>
                                    </div>
                                </div>
                                <div class="produit">
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-md-1">
                                                <div class="check">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="photoProduit">
                                                    <img class="imagePro" src="..\Img\coca.jfif" style="background-image:url(..\\Img\\coca.jfif);">
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="InfoProduit">
                                                    <p>Coca cola (Original)</p>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="InfoProduit2">
                                                    <p>En promo : 1 achat = 1 graduit</p>
                                                </div>
                                            </div>
                                            <div class="col-md-1">
                                                <div class="prixUniProduit">
                                                    <p>1.00 $</p>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="qteProduit">
                                                    <input type="number" value="50" min="0" max="100" step="1"/>
                                                </div>
                                            </div>
                                            <div class="col-md-1">
                                                <div class="prixTtProduit">
                                                    <p>5.00 $</p>
                                                </div>
                                            </div>
                                            <div class="col-md-1">
                                                <div class="suppression">
                                                    <button type="submit" class="glyphicon glyphicon-trash"></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div> 
                            </div>         
                                    
                                    
                            
                            <div class="oneProduit">
                               <div class="dessusPro">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                          Magasin : 
                                        </label>
                                        <span>Carrefour</span>
                                    </div>
                                </div>
                                <div class="produit">
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-md-1">
                                                <div class="check">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="photoProduit">
                                                    <img class="imagePro" src="..\Img\macaron.jfif" style="background-image:url(..\\Img\\macaron.jfif);">
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="InfoProduit">
                                                    <p>Boîte de macaron</p>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="InfoProduit2">
                                                    <p>En promo : 1 achat = 1 achat 50% solde</p>
                                                </div>
                                            </div>
                                            <div class="col-md-1">
                                                <div class="prixUniProduit">
                                                    <p>12.00 $</p>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="qteProduit">
                                                    <input type="number" value="50" min="0" max="100" step="1"/>
                                                </div>
                                            </div>
                                            <div class="col-md-1">
                                                <div class="prixTtProduit">
                                                    <p>24.00 $</p>
                                                </div>
                                            </div>
                                            <div class="col-md-1">
                                                <div class="suppression">
                                                    <button type="submit" class="glyphicon glyphicon-trash"></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div> 
                            </div>
                            
                            
                            <div class="oneProduit">
                               <div class="dessusPro">
                                    <div class="form-check">
                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                        <label class="form-check-label" for="flexCheckDefault">
                                          Magasin : 
                                        </label>
                                        <span>Carrefour</span>
                                    </div>
                                </div>
                                <div class="produit">
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-md-1">
                                                <div class="check">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="photoProduit">
                                                    <img class="imagePro" src="..\Img\phone.jfif" style="background-image:url(..\\Img\\phone.jfif);">
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="InfoProduit">
                                                    <p>HUAWEI Mate 30</p>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="InfoProduit2">
                                                    <p>En promo : 1 achat = solde jusqu'à 80%</p>
                                                </div>
                                            </div>
                                            <div class="col-md-1">
                                                <div class="prixUniProduit">
                                                    <p>599.00 $</p>
                                                </div>
                                            </div>
                                            <div class="col-md-2">
                                                <div class="qteProduit">
                                                    <input type="number" value="50" min="0" max="100" step="1"/>
                                                </div>
                                            </div>
                                            <div class="col-md-1">
                                                <div class="prixTtProduit">
                                                    <p>599.00 $</p>
                                                </div>
                                            </div>
                                            <div class="col-md-1">
                                                <div class="suppression">
                                                    <button type="submit" class="glyphicon glyphicon-trash"></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div> 
                            </div>
                            
                            
         
                    </div>      
                        
                </div>
                    
                <div class="titlePrix">
                    <button type="submit" class="btn btn-info">Régler</button>
                    <span><p>Articles sélectionnés en prix total : </p><p class="prixLabel">975.68 $</p></span>

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
    
    
    
    
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.4.1/dist/jquery.slim.min.js"></script>
    
    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
    
    <script type="text/javascript">
        /*$(function(){

            $(".maintip").each(function(index){   //遍历A部分，注意这里绑定事件用了index参数
                $(this).mouseover(function(){   //鼠标经过A时触发事件
                    var obj=$(this).offset();   //获取被鼠标经过的A的偏移位置，offset()是个好东西，不懂的朋友得去了解下
                    var xobj=obj.left+$(this).width()+"px"; //后面要让B水平偏移的距离，这里的“200”是可自定义的，当然你可以改为$(this).width()来获得跟A一样的宽度
                    var yobj=obj.top+"px";     //后面要让B垂直偏移的距离
                    //$(this).css({"width":"200px","z-index":"9999","border-right":"none","background":"#fff"});  //A改变样式，变为选中状态的效果
                    $(this).css({"z-index":"9999"});  //A改变样式，变为选中状态的效果
                    $(".tips:eq("+index+")").css({"left":xobj,"top":yobj}).show();   //对应的（这里利用了索引）B改变样式并显示出来
                    })
                .mouseout(function(){     //鼠标离开A时触发的事件
                    $(".tips").hide();     //B隐藏
                    //$(this).css({"width":"200px","z-index":"1","border":"1px solid #E5D1A1","background":"#FFFDD2"})   //A变回原始样式
                    $(this).css({"z-index":"1"})   //A变回原始样式
                })
            })

                 $(".tips").each(function(){  //遍历B
                    $(this).mouseover(function(){  //鼠标经过B时触发事件
                    //$(this).prev(".maintip").css({"width":"200px","z-index":"9999","border-right":"none","background":"#fff"})  //对应的A变为选中状态效果
                    $(this).prev(".maintip").css({"z-index":"9999"})
                    $(this).show();  //A不要隐藏了，解决因为上面写的鼠标离开A导致A隐藏
                })
                .mouseout(function(){  //鼠标离开B触发事件，其实就是让B隐藏，同时A变为原始状态
                    $(this).hide();
                    //$(this).prev(".maintip").css({"width":"200px","z-index":"1","border":"1px solid #E5D1A1","background":"#FFFDD2"});
                    $(this).prev(".maintip").css({"z-index":"1"});
                })
            })
        })
        */
        
        $(function(){

            $(".maintip").each(function(index){
                var tip_height=$(".tips:eq("+index+")").height();
                $(this).mouseover(function(){
                    var win_height=$(window).height();    //获取浏览器当前可视区域高度
                    var obj=$(this).offset();
                    var wobj=$(this).width();
                    if(obj.top+tip_height<win_height){    //判断B底部是否超过浏览器底部
                        //没超过，按默认A和B顶端偏移位置一致即可
                        var xobj=obj.left+wobj+"px";
                        var yobj=obj.top+"px";
                    }
                    else{
                        //超过了，那么抬高B顶部位置
                        var tip_top=win_height-tip_height;
                        var xobj=obj.left+wobj+"px";
                        var yobj=tip_top+"px";
                    }
                    //$(this).css({"width":"200px","z-index":"9999","border-right":"none","background":"#fff"});
                    $(this).css({"z-index":"9999"});
                    $(".tips:eq("+index+")").css({"left":xobj,"top":yobj}).show();
                }).mouseout(function(){
                    $(".tips").hide();
                    //$(this).css({"width":"200px","z-index":"1","border":"1px solid #E5D1A1","background":"#FFFDD2"})
                    $(this).css({"z-index":"1"})
                })
            })

            $(".tips").each(function(){
                $(this).mouseover(function(){
                //$(this).prev(".maintip").css({"width":"200px","z-index":"9999","border-right":"none","background":"#fff"})
                $(this).prev(".maintip").css({"z-index":"9999"})
                $(this).show();
            }).mouseout(function(){
                $(this).hide();
                //$(this).prev(".maintip").css({"width":"200px","z-index":"1","border":"1px solid #E5D1A1","background":"#FFFDD2"});
                $(this).prev(".maintip").css({"z-index":"1"});
                  })
            })
        })
        
        $("input[type='number']").inputSpinner();
    </script>
</html>

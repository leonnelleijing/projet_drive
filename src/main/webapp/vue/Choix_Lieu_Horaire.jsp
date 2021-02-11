<%-- 
    Document   : Choix_Lieu_Horaire
    Created on : 8 févr. 2021, 11:19:21
    Author     : 33667
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/styleChoixMagasin.css" type="text/css" />
        <title>Finalisation commande</title>
    </head>
    <body onload = "afficherCalendrier()">
        <h1>Choix de retrait</h1>
        
        <p> Veuillez choisir la date à laquelle vous voulez retirer votre commande </p>
        <div class = "calendrier_class" id = "calendrier"></div>
        
        <p> Veuillez choisir votre magasin de retrait de commande</p>
        <p>Tapez votre codePostal pour choisir un magasin proche de chez vous :</p>
        <input id="saisieMagasin" type="text" placeholder="Saisissez votre code postal !" />
        <select id="lmagasins"><option>-----</option></select>
        
        <div class = "creneaux" id = "boutonsCreneaux">
        </div>
        
        <button type="button" id ="validerCommande"> Valider ma commande </button> 
        
        <script type="text/JavaScript" src="/../js/ChoixLieuHoraire.js"></script>
    </body>
</html>

<%-- 
    Document   : Choix_Lieu_Horaire
    Created on : 8 févr. 2021, 11:19:21
    Author     : 33667
--%>

<jsp:includepage="/vue/Header.jsp">
    <jsp:param name="title" value="Article"/>
</jsp:include>

    
<div class="container-fluid">

    <div class="row">
        <%@ include file="/vue/Menu.jsp"%>
          <div class="col-md-10">
                    <div class="part1Bis">
                        <%@ include file="/vue/MenuHorisontal.jsp"%>
                        <div class="jumbotron2">
                            <div class="col-md-5" >
                                <h1> Good Shop! </h1>
                            </div>
                            
                          </div>
                    </div> 
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
        
       
   <%@ include file="/vue/Footer.jsp"%>
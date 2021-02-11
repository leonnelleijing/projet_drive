/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Helmy
 */

function afficherCalendrier(){
    console.log("OK");
    var elt = document.getElementById("calendrier");
    var objToday = new Date();
	weekday = new Array('Dimanche', 'Lundi', 'Mardi', 'Mercredi', 'Jeudi', 'Vendredi', 'Samedi');
	months = new Array('Janvier', 'Février', 'Mars', 'Avril', 'Mai', 'Juin', 'Juillet', 'Août', 'Septembre', 'Octobre', 'Novembre', 'Decembre');
    
    var incrementDay = 0;
    for (i = 0 ; i < 6; i++){ 
      dayOfMonth = objToday.getDate() + i;
      curYear = objToday.getFullYear();
      maxDay = 30;
      	if (objToday.getDay() + i > 6){
        	dayOfWeek = weekday[incrementDay]; //Si on est samedi (6), alors le jour suivant est dimanche (0)
            incrementDay++;
        } else {
        	dayOfWeek = weekday[objToday.getDay() + i];
        }   
        if (objToday.getMonth() % 2 === 0) {
        	maxDay = 31; //Les mois de janvier (0), mars(2)... ont 31 jours
        } else if (objToday.getMonth() === 1){
        	maxDay = 28; // On ne s'occupe pas des années bissextiles
        }
        
        if (dayOfMonth + i > maxDay){
        	if (objToday.getMonth() < 10){
              curMonth = months[objToday.getMonth()+1]; //On passe au mois suivant
              dayOfMonth = 1; //On passe au premier jour du mois
              
            } else {
              curMonth = months[0];
              dayOfMonth = 1;
              curYear = objToday.getFullYear() + 1; //Je change d'année
            }
        } else {
        	curMonth = months[objToday.getMonth()]; //11 max (décembre) 0 min (janvier)
        }
      var today = dayOfWeek + " " + dayOfMonth + " " + curMonth + " " + curYear;

      elt.insertAdjacentHTML("beforeend", "<li><input type =\"radio\" class = \"btn_calendar\" name = \"btn_calendar\">" + today + "</input></li>");
    }
}

function l_magasins ()
	{
            // Objet XMLHttpRequest.
	var xhr = new XMLHttpRequest();
        var mot = document.getElementById("saisieMagasin").value;

	// Requête au serveur avec les paramètres éventuels.
	xhr.open("GET","ServletAfficherMagasin?codePostal="+mot);

	// On précise ce que l'on va faire quand on aura reçu la réponse du serveur.
	xhr.onload = function()
		{
		// Si la requête http s'est bien passée.
		if (xhr.status === 200)
			{
			  // Elément html que l'on va mettre à jour.                          
                          var listeMagasins = xhr.responseXML.getElementsByTagName("magasin");
                          var listeMagasinsCode = xhr.responseXML.getElementsByTagName("magasinCode");
                          var elt = document.getElementById("lmagasins");
                          elt.innerHTML = "";
                          //Pour chaque réponse, je récupère le String de magasin (CP, nom, ville, rue) que je mets en affichage de sélection, et le codeMagasin que je mets en valeur de l'option
                          for(var i = 0; i < listeMagasins.length; i++){
                             var magasin = listeMagasins[i].firstChild.nodeValue;
                             var magasinCode = listeMagasinsCode[i].firstChild.nodeValue;
                             elt.insertAdjacentHTML("beforeend", "<option value = "+magasinCode+">"+magasin+"</option>");
                          }
			}
		};
	
	// Envoie de la requête.
	xhr.send();
	}
        
function l_creneaux ()
	{
            // Objet XMLHttpRequest.
	var xhr = new XMLHttpRequest();
        var selection = document.getElementById("lmagasins");
        //Je récupère l'option (le magasin) sélectionnée
        var codeMagasin = selection.options[selection.selectedIndex].value;

	// Requête au serveur avec les paramètres éventuels.
	xhr.open("GET","ServletAfficherCreneaux?codeMagasin="+codeMagasin);

	// On précise ce que l'on va faire quand on aura reçu la réponse du serveur.
	xhr.onload = function()
		{
		// Si la requête http s'est bien passée.
		if (xhr.status === 200)
			{
			  // Elément html que l'on va mettre à jour.                          
                          var listeCreneaux = xhr.responseXML.getElementsByTagName("creneau");
                          var listeCreneauxCode = xhr.responseXML.getElementsByTagName("creneauCode");
                          var listeNiveauAfflux = xhr.responseXML.getElementsByTagName("niveauAff");
                          var elt = document.getElementById("boutonsCreneaux");
                          elt.innerHTML = "";
                          for(var i = 0; i < listeCreneaux.length; i++){
                             var creneau = listeCreneaux[i].firstChild.nodeValue;
                             var creneauCode = listeCreneauxCode[i].firstChild.nodeValue;
                             var niveauAff = listeNiveauAfflux[i].firstChild.nodeValue;
                             elt.insertAdjacentHTML("beforeend", "<input type = \"radio\" class = \"btn_creneau\" name = \"btn_creneau\" id = " + creneauCode + " value = " + creneauCode + "  >"+creneau+"  -  "+niveauAff+ "</br></input>");
                          }
			}
		};
	
	// Envoie de la requête.
	xhr.send();
	}

function validerCommande () {
    //Afficher Pop-Up
    /**var creneauSelected = 0;
        //Je récupère le bouton (le créneau) sélectionné
        var selectedCreneau = document.querySelectorAll(".creneaux > input.btn_creneau");
        for(var i = 0; i < selectedCreneau.length; i++){
            if (selectedCreneau[i].checked) {
                creneauSelected = selectedCreneau[i].value;
                break;
            };
        }
        var selection = document.getElementById("lmagasins");
        //Je récupère l'option (le magasin) sélectionnée
        var magasin = selection.value;
        //Je récupère le bouton (le créneau) sélectionné
        var selectedDate = document.querySelectorAll(".calendrier_class > input.btn_calendar");
        out.println("Retrait commande - Le " + selectedDate + " à " + creneauSelected + "au magasin : "+magasin);*/
    var confirmation;
    if (confirm("Valider votre commande ?")) {
        confirmation = "Oui, je valide";
    } else {
        confirmation = "Revenir au choix de retrait";
    }
    
    //Si pop-up validée
    if (confirmation === "Oui, je valide") {
       confirmerValidation(); 
    }
}

function confirmerValidation () {
    
    // Objet XMLHttpRequest.
	var xhr = new XMLHttpRequest();
        var creneauSelected = 0;
        //Je récupère le bouton (le créneau) sélectionné
        var selectedCreneau = document.querySelectorAll(".creneaux > input.btn_creneau");
        for(var i = 0; i < selectedCreneau.length; i++){
            if (selectedCreneau[i].checked) {
                creneauSelected = selectedCreneau[i].value;
                break;
            }
        }
        var selection = document.getElementById("lmagasins");
        //Je récupère l'option (le magasin) sélectionnée
        var codeMagasin = selection.options[selection.selectedIndex].value;
        //Je récupère le bouton (le créneau) sélectionné
        var selectedDate = document.querySelectorAll(".calendrier_class > input.btn_calendar");
        
	// Requête au serveur avec les paramètres codeC, codeM, date.
	xhr.open("GET","ServletAfficherCreneaux?codeCreneau="+creneauSelected+"&codeMagasin="+codeMagasin+"&date="+selectedDate);

	// On précise ce que l'on va faire quand on aura reçu la réponse du serveur.
	xhr.onload = function()
		{
		// Si la requête http s'est bien passée.
		if (xhr.status === 200)
			{
			  // Elément html que l'on va mettre à jour.                          
                          var listeCreneaux = xhr.responseXML.getElementsByTagName("creneau");
                          var listeCreneauxCode = xhr.responseXML.getElementsByTagName("creneauCode");
                          var elt = document.getElementById("boutonsCreneaux");
                          elt.innerHTML = "";
                          for(var i = 0; i < listeCreneaux.length; i++){
                             var creneau = listeCreneaux[i].firstChild.nodeValue;
                             var creneauCode = listeCreneauxCode[i].firstChild.nodeValue;
                             elt.insertAdjacentHTML("beforeend", "<button type = \"button\" class = \"btn_creneau\" value = " + creneauCode + " >"+creneau+"</button>");
                          }
                        window.location.href = 'Home.jsp';
			}
		};
	
	// Envoie de la requête.
	xhr.send();
}
        
document.addEventListener("DOMContentLoaded", () => {
    
        document.getElementById("saisieMagasin").addEventListener("input",l_magasins);
        document.getElementById("lmagasins").addEventListener("change",l_creneaux);
        document.getElementById("validerCommande").addEventListener("click",validerCommande);
});



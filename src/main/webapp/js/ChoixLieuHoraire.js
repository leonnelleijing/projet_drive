/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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
                          var elt = document.getElementById("boutonsCreneaux");
                          elt.innerHTML = "";
                          for(var i = 0; i < listeCreneaux.length; i++){
                             var creneau = listeCreneaux[i].firstChild.nodeValue;
                             elt.insertAdjacentHTML("beforeend", "<button type = \"button\" >"+creneau+"</button>");
                          }
			}
		};
	
	// Envoie de la requête.
	xhr.send();
	}
        
document.addEventListener("DOMContentLoaded", () => {
    
        document.getElementById("saisieMagasin").addEventListener("input",l_magasins);
        document.getElementById("lmagasins").addEventListener("change",l_creneaux);

});



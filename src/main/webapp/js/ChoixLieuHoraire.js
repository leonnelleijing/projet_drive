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
	xhr.open("GET","ServletAfficherCreneau?codePostal="+mot);

	// On précise ce que l'on va faire quand on aura reçu la réponse du serveur.
	xhr.onload = function()
		{
		// Si la requête http s'est bien passée.
		if (xhr.status === 200)
			{
			  // Elément html que l'on va mettre à jour.                          
                          var listeMagasins = xhr.responseXML.getElementsByTagName("magasin");
                          var elt = document.getElementById("lmagasins");
                          for(var i = 0; i < listeMagasins.length; i++){
                             var magasin = listeMagasins[i].firstChild.nodeValue;
                             elt.insertAdjacentHTML("beforeend", "<option>"+magasin+"</option>");
                          }
			}
		};
	
	// Envoie de la requête.
	xhr.send();
	}
        
document.addEventListener("DOMContentLoaded", () => {
    
        document.getElementById("saisieMagasin").addEventListener("input",l_magasins);

});



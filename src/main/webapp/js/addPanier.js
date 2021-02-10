/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function addToBasket(codeP){
    
    console.log(codeP);
    // création de http  
    var xhr = new XMLHttpRequest();
    // Requête au serveur
    xhr.open("GET", "servletBasket?idProduit="+codeP+"&action=addToBasket");
    xhr.onload = function()
    {
          if(xhr.status === 200){
            console.log("Ajouter au panier");
          }
         
    };
 

    
    xhr.send();
}


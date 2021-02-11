
//ajouter un produit
function addList(){
       alert("cc");  
    // Objet XMLHttpRequest.
    var xhr = new XMLHttpRequest();
      
    var name = document.getElementById("newListName").value;
    console.log(name);
    
        // Requête au serveur avec les paramètres éventuels.
        xhr.open("GET","ServletListAddList" +"?newListName="+name); 

        // On précise ce que l'on va faire quand on aura reçu la réponse du serveur.
        xhr.onload = function(){
            if (xhr.status === 200){ // Si la requête http s'est bien passée.
                // Elément html que l'on va mettre à jour.
                var elt = document.getElementById("test"); 
                //console.log(elt);
               // elt.innerHTML="";

                var d  = xhr.responseXML; // je remplace son contenu

                m = d.getElementsByTagName("word")[0].firstChild.nodeValue;
                elt.insertAdjacentHTML('beforeend',"<div class='col-4' id='test'><div class='panel panel-default'> <div class='panel-heading'> Je veux: <input id='itemToAdd' type='text' />"
                +"<button id='addBtn' class='btn btn-danger' onclick='addPostIt(this)'> Ajouter </button></div><div class='panel-body'><h3 class='card-title'>"+m+" </h3>"
                +"</div><div class='panel-body'><h4>J'ai besoin de: </h4><ul id='shoppingList' class='list-group list-group-flush'><div class='row' id='listPostIt'></div>"
                +"<div class='row' id='listProduits'></div></ul></div>"
                +"<div class='panel-body'><h4>Articles supprimés</h4><ul id='removedList' class='list-group list-group-flush'></ul></div></div></div>");
              
          
                //document.getElementById("bouton").disabled="disabled";
                
                //elt.parentNode.insertAdjacentHTML('beforebegin',  '<input type="text" name="zone" size="20" maxlength="20" value="'+mG+ '" disabled="disabled" />' );
                document.getElementById("newListName").value="";
            }
            }; 
        // Envoie de la requête.
        xhr.send(); 
        
}


//ajouter un post-it

function addPostit(){

       
    // Objet XMLHttpRequest.
    var xhr = new XMLHttpRequest();
    var word = this.previousSibling.value;
    var liste = this.getAttribute("name");
    console.log(liste);
    console.log(word);
    
        // Requête au serveur avec les paramètres éventuels.
        xhr.open("GET","ServletListAddWord"+"?itemToAdd="+word+"&idList="+liste); 

        // On précise ce que l'on va faire quand on aura reçu la réponse du serveur.
        xhr.onload = function(){
            if (xhr.status === 200){ // Si la requête http s'est bien passée.
                // Elément html que l'on va mettre à jour.
                var elt = document.getElementById("listPostIt"+liste); 
                
                //console.log(elt);
                elt.insertAdjacentHTML("beforeend","<div class='list-group-item'>"+word+"</div>");

//                var d  = xhr.responseXML; // je remplace son contenu
//                
//                m = d.getElementsByTagName("word")[0].firstChild.nodeValue;
//               
//                //alert(println(m));
//                elt.insertAdjacentHTML('beforeend',"<p>Ok</p>");
                

              
                //elt.parentNode.insertAdjacentHTML('beforebegin',  '<input type="text" name="zone" size="20" maxlength="20" value="'+mG+ '" disabled="disabled" />' );
                //document.getElementById("itemToAdd").value="";
            }
            }; 
        // Envoie de la requête.
        xhr.send(); 



}

//supprimer un post-it
function delatePostit(){};

//ajouter un produit
function addProduct(){};

//supprimer un produit
function delateProduct(){};

document.addEventListener("DOMContentLoaded", () => {
    
        document.getElementById("createBtn").addEventListener("click",addList);
        
        var listebouton = document.getElementsByClassName("addBtn");
        for (i=0 ; i<listebouton.length;i++)
            listebouton[i].addEventListener("click",addPostit);
       
});
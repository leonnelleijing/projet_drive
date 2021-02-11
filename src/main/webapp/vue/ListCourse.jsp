<%-- 
    Document   : List
    Created on : 7 févr. 2021, 11:42:16
    Author     : jess
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<jsp:include page="/vue/Header.jsp">
    <jsp:param name="title" value="List"/>
</jsp:include>


<!DOCTYPE html>
<html>
   <head>
        <meta charset="utf8">
        <title> Listes de course </title>
        <!-- JQuery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <link rel="stylesheet" href="/../css/list.css" />
        <script type="text/javascript" src="/../js/MyList.js"></script>
        <script type="text/javascript" src="/../js/main.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
            crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>

    <body>
         
         <div class="container">
		
        
            <div class="row">
		<button id="createList" class="btn btn-danger" > Nouvelle liste </button>
                <input id="listName" type="text" value="Choisissez un titre"/>
            </div>
             
            <div class="row">
		<p> </p>
            </div>

            <div class="row">
                            <div class="column">
                                    <div class="card">
                                        
                                        <!-- Ajouter un post-it -->
                                           <div class="card-title">
                                                  <div class="row ">
                                                   
                                                      <div class="col-10">
                                                          <div class='traitement'>
                                                   <!--  <h3 class="card-title">  </h3> -->
                                                    <h3 id="listName">Liste des courses</h3>
                                                      </div>
                                                      </div>
                                                      
                                                       <div class="col-2">  
                                                        <button id="bin" class="  btn btn-danger"> <img src="images/icon/bin.png" height="15px" width="=15px"> </button>
                                                    </div>
                                                  </div>
                                            </div>
                                            <div class="card-header">
                                                    Je veux: <input id="itemToAdd" type="text" />
                                                    <button id="addBtn" class="btn btn-warning"> Ajouter </button>
                                            </div>


                                            <div class="card-body">
                                                    <h4>J'ai besoin de: </h4>
                                                    <ul id="postItShoppingList" class="list-group list-group-flush">
                                                            <!--Items will be added here --> Liste Post-it
                                                    </ul>
                                                    <ul id="productShoppingList" class="list-group list-group-flush">
                                                            <!--Items will be added here --> Liste Produits
                                                    </ul>
                                            </div>
                                        <!--
                                            <div class="card-body">
                                                    <h4>Articles supprimés:</h4>
                                                    <ul id="removedList" class="list-group list-group-flush">
                                                            <!--Removed items will be added here 
                                                    </ul>
                                            </div>
                                            -->
                                            <div class="card-footer">
                                                <div class="row justify-content-center">
                                                   
                                                        <button id="basket" class="btn btn-warning"> <img src="images/icon/shopping-basket.png" height="30px" width="=30px"> Acheter les produits ! </button>
                                                   
                                                </div>
                                            </div>
                                    </div>
                            </div>
            </div>             
             <br/>
             
             <script> 
                .traitement h3{
                         text-align: center;

                     }
            </script>
        
  <%@ include file="/vue/Footer.jsp"%>  
  
 


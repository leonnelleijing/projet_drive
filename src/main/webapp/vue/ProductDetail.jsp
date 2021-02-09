
  
<%-- 
    Document   : Product-detail
    Created on : 8 févr. 2021, 14:21:05
    Author     : 21505260
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
         <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
        <title>${Params}</title>
    </head>
    <body>
        <div class="container">
            <div>
                <div class="d-flex pt-3" style="padding-top: 5rem">
                    <div class="row">
                        <div class="col-md-6">
                            <img src="/../Img/coca.jfif" height="250px">
                             <div>
                <b>Label</b>
               
            </div>
            <div>
                <b>Description</b>
                <p>voici une canette de coca très équilibrée et très rafraichissante</p>
            </div>
                        </div>
                        <div class="row col-md-6">
                                <h1 class="col-md-12">Coca</h1> <!--Intitulé du produit-->
                                <span class="col-md-12">La cannette</span><!--Quantité du produit-->
                                <b class="col-md-12">FRANCE</b>
                                <span class="col-md-12" id="nutriscore">nutriscore</span>
                                <span class="col-md-12" id="UnitPrice">2,29€</span>
                                <span class="col-md-12 mb-5" id="WeightQtePrice">2,29€/Pièce</span>                
                                <button class="btn"><span class="glyphicon glyphicon-shopping-cart">Acheter</span></button>
                        </div>
                   </div>
                </div> 
            </div> 
            
      </div>  
    </body>
</html>


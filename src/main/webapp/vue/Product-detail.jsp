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
            <div class="d-flex pt-3">
                <div class="row">
                    <div class="col-md-6">
                        <img src="/../Img/coca.jfif">
                    </div>
                    <div class="row col-md-6">
                            <h1 class="col-md-12">Pommes Gala</h1> <!--Intitulé du produit-->
                            <span class="col-md-12">La braquette de 6 fruits</span><!--Quantité du produit-->
                            <h2 class="col-md-12">FRANCE</h2>
                            <span class="col-md-12" id="UnitPrice">2,29€</span>
                            <span class="col-md-12" id="WeightQtePrice">2,29€/Pièce</span>                
                            <button type="button" class="btn btn-warning col-md-3">Acheter</button>
                    </div>
               </div>
            </div>    
        </div>   
    </body>
</html>

<%@page import="com.samrtsolutions.drive.model.Label"%>
<%@page import="com.samrtsolutions.drive.model.Product"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:includepage="/vue/Header.jsp">
    <jsp:param name="title" value="Article"/>
</jsp:include>

    
<div class="container-fluid">

    <div class="row">
        <%@ include file="/vue/Menu.jsp"%>
          <div class="col-md-10">
                    <div class="part1Bis">
                        <%@ include file="/vue/MenuHorisontal.jsp"%>
                       <div class="part3">
                        <div class="title">
                            <h2>Liste Produits ${familyName} </h2>
                        </div>
                        <div class="sort_by_price row">
                            <div class="container form-select form-group">
                                <select name="sort_by_price" class ="sortBtn" id="sort_by_price">
                                    <option value="0">Default</option>
                                    <option value="1">Prix au kilo décroissant</option>
                                    <option value="2">Prix au kilo croissant</option>
                                    <option value="3">Prix décroissant</option>
                                    <option value="4">Prix croissant</option>
                                </select>
                            </div>
                        </div>
         
                          <div class="lstPro">
          
 <%
           Product p= (Product)request.getAttribute("product");
          // out.print( p.getProductName());
           
          // out.print(" <div class='container'>");
          // out.print(<div class='d-flex pt-3' style='padding-top: 5rem'>);
           out.print("<div class='row'>");
	
	out.print("<h3 class='titreDescription'>"+p.getProductName()+"</h3>");	
        out.print(" </div>");
        
        
        out.print("</div>");
        out.print("<div class='row'>");
        
        out.print("<div class='col-md-4'>");
        out.print("<div class='row'>");	
        out.print("<img class='imgDescription' src="+ p.getImage()+" >");
        out.print("</div>");
        
        out.print("<div class='row'>");
       //if(p.getLabels()!=null){
       //out.print("<div class='my_label'>");
       // for(Label l: p.getLabels()){
       // out.print("<img src='"+l.getImageLabel()+"'>");
       // out.print("</div>");
       // out.print("</div>");
        //       }
        out.print("</div>");
        out.print("</div>");
        out.print("<div class='col-md-8'>");
        out.print("<div class='row'>");
        out.print("<p class='description2'> "+p.getProductBrandProprietary()+" ( "+p.getProductSecondaryBrand()+" ) </p>");
        out.print("</div>");
        out.print("<div class='row'>");
        out.print("<p class='descriptionOrigine'> Made in: "+p.getProductOrigine()+" </p>");
        out.print("</div>");
        out.print("<div class='row'>");
        out.print("<p class='description'> Description: "+p.getProductDescription()+" </p>");
        out.print("</div>");
        out.print("<div class='row'>");
        out.print("<p class='description'> Ingrédients: "+p.getProductComposition()+" </p>");
        out.print("</div>");
        out.print("<div class='row'>");
        out.print("<p class='description'> Nutriscore: "+p.getNuttritionScore()+" </p>");
        out.print("</div>");
        out.print("<div class='row'>");
        out.print(" <p class='Price'> "+p.getProductUnitPrice()+" € </p> <p class='description'>"+p.getProductWeight()+" "+ p.getProductFormat()+" (" +p.getProductKiloPrice()+") </p>");
        out.print("</div>");
        out.print("<div class='row'>");
        out.print("<p class=''> "+p.getProductKiloPrice()+"€/"+p.getProductKiloPriceUnit()+"</p>");
        out.print("</div>");
	out.print("</div>");
	out.print("</div>");
        out.print("<div class='row'>");
       
        out.print("<div class='row'>");
        //out.print("<div class='col-4'>");
        out.print("<p class=''> Quantité: <input type='text' id='desiredQuantity'>  </input> ");
       // out.print("</div>");
       // out.print("<div class='col-6'>");
        out.print("<button class='btn'><span class='glyphicon glyphicon-shopping-cart'> Acheter </span></button>");
       // out.print("</div>");
       // out.print("<div class='col-2'>");
        out.print("<button class='btn2'><span class='glyphicon glyphicon-th-list'> Liste </span></button></p>");
        //out.print("</div>");
	out.print("</div>");
        
 %>
    </div>
                    </div><!-- comment -->
</div>
     </div>
  <%@ include file="/vue/Footer.jsp"%>

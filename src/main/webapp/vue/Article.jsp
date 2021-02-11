
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
                        <div class="jumbotron">
                            <h1>Shop!</h1>

%>
    <nav class="breadcrumb-section">
        <div class="container wrapper">
            <div class="row">
                <div class="col-12">
                    <ol class="breadcrumb bg-transparent m-0 p-0 align-items-center">
                        <li class="breadcrumb-item"><a href="index.html">Home</a></li>
                        <li class="breadcrumb-item active" aria-current="page">KitchenAid Artisan KSM150</li>
                    </ol>
                </div>
            </div>
        </div>
    </nav>
    <!-- bread-crumb2 start -->
    <div class="single-product-wrap">
        <div class="container wrapper">
            <div class="row mb-n10">
                <div class="col-lg-5 mb-10">
                    <div class="product-detail_img vertical-slider_wrap2">
                        <div class="swiper-container pd-vertical_slider2 lightgallery">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <div class="single-img">
                                        <img src="images/products/product2.jpg" alt="Product Image" />
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="single-img">
                                        <img src="images/products/product3.jpg" alt="Product Image" />
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="single-img">
                                        <img src="images/products/product4.jpg" alt="Product Image" />
                                    </div>
                                </div>
                            </div>
                        </div>
                         
                    </div> 
                    <div class="part3">
         
                          <div class="lstPro">
          
 <%
           Product p= (Product)request.getAttribute("product");
          // out.print( p.getProductName());
           
          // out.print(" <div class='container'>");
          // out.print(<div class='d-flex pt-3' style='padding-top: 5rem'>);
           out.print("<div class='row'>");
	out.print("<div class='col-md-5'>");
	out.print("<h3>"+p.getProductName()+"</h3>");	
        out.print(" </div>");
        out.print(" <div class='col-4'>");
        out.print("<input type='text' id='desiredQuantity' value='TOTAL €'> </input>");
        //out.print("<input type='text' id='desiredQuantity' value='"+ panier.sumBasket() +"'> </input>");
       out.print(" <span class='glyphicon glyphicon-shopping-cart'>");
        out.print("</div>");
        
        out.print("</div>");
        out.print("<div class='row'>");
        
        out.print("<div class='col-md-4'>");
        out.print("<div class='row'>");	
        out.print("<img class='imgDescription' src="+ p.getImage()+" >");
        out.print("</div>");
        out.print("<div class='row'>");
        out.print("<div class=''><p>"+p.getProductWeight()+" "+ p.getProductFormat()+"</p></div>");
        out.print("</div>");
        out.print("<div class='row'>");
       // if(p.getLabels()!=null){
       //     out.print("<div class='my_label'>");
        //       for(Label l: p.getLabels()){
        //           out.print("<img src='"+l.getImageLabel()+"'>");
        //       }
        out.print("</div>");
        out.print("</div>");

        out.print("<div class='col-md-8'>");
        out.print("<div class='row'>");
        out.print("<p class=''> "+p.getProductBrandProprietary()+" </p>");
        out.print("</div>");
        out.print("<div class='row'>");
        out.print("<p class=''> Made in: "+p.getProductOrigine()+" </p>");
        out.print("</div>");
        out.print("<div class='row'>");
        out.print("<p class=''> Description: "+p.getProductDescription()+" </p>");
        out.print("</div>");
        out.print("<div class='row'>");
        out.print("<p class=''> Ingrédients: "+p.getProductComposition()+" </p>");
        out.print("</div>");
        out.print("<div class='row'>");
        out.print("<p class=''> Nutriscore: "+p.getNuttritionScore()+" </p>");
        out.print("</div>");
        out.print("<div class='row'>");
        out.print("<p class=''> Prix: "+p.getProductUnitPrice()+" €</p>");
        out.print("</div>");
        out.print("<div class='row'>");
       // out.print("<p class=''> ( "+p.getProductKiloPrice()+") </p>");
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
<%-- 
    Document   : retraitCommande
    Created on : 10 févr. 2021, 11:35:14
    Author     : maxim
--%>


<%@page import="com.samrtsolutions.drive.repository.ProductDaoImpl"%>
<%@page import="com.samrtsolutions.drive.model.PostIt"%>
<%@page import="com.samrtsolutions.drive.model.Liste"%>
<%@page import="com.samrtsolutions.drive.repository.ListDaoImpl"%>
<%@page import="com.samrtsolutions.drive.model.Label"%>
<%@page import="com.samrtsolutions.drive.model.Product"%>
<%@page import="java.util.List"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<jsp:includepage="/vue/Header.jsp">
    <jsp:param name="title" value="liste"/>
</jsp:include>

    
<div class="container-fluid">

    <div class="row">
        <%@ include file="/vue/Menu.jsp"%>
          <div class="col-md-10">
                <div class="row">
                    <div class="part1Bis">
                        <%@ include file="/vue/MenuHorisontal.jsp"%>
                         <div class="jumbotron2">
                            <div class="col-md-5" >
                                <h1> Vos listes </h1>
                            </div>
                            <div class="col-md-5">
                                <input id='newListName' type='text'place='Choisissez un nom de liste' />
                                <button id='createBtn' class='btn btn-danger'> Nouvelle liste </button>
                            
                            </div>
                          </div>
                    </div> 
                 </div>    
                         
                         
  <%
         //List <liste> listes= (List) session.getAttribute("listes");
            //                   for(Liste l: listes){
         
     
        ListDaoImpl listList = new ListDaoImpl();
        ProductDaoImpl productList = new ProductDaoImpl();
        List<Liste> listes =  listList.getAllList();
        
        
        if(listes != null){
            for(Liste l : listes){
                //out.print("<div>Nom"+l.getListName()+"</div>") ;
                
                out.print("<div class='row' >"); 
            
                out.print("<div class='col-md-4' id='test'>");
                out.print("<div class='panel panel-default'>"); 
                out.print("<div class='panel-heading'>");  
                out.print(" Je veux: <input id='itemToAdd' type='text'/>"); 
                out.print("<button class='btn btn-danger addBtn' name='"+l.getListCode()+"'> Ajouter </button>");  
                out.print("</div>");
                out.print("<div class='panel-body'>");  
                out.print("<h3 class='card-title'>"+l.getListName()+"</h3>");  
                //out.print("<h3 class='card-title'>Liste des courses n°"+l.getTitleList())+"</h3>");  
                out.print("</div>"); 
                out.print("<div class='panel-body'>");  
                out.print("<h4>J'ai besoin de: </h4>");  
                out.print("<ul id='shoppingList' class='list-group list-group-flush'>");
                
                out.print("<div class='row' id='listPostIt"+l.getListCode()+"'>");
                //out.print("<p>ok</p>");
                out.print("</div>"); 
                out.println("<div class='row' id='listProduits'>");
                
                if(l.getPostItList() != null){
                    //out.print("HELLOOOOOOOO");
                 
                    for(PostIt p : l.getPostItList()){
                    out.print("<div class='list-group-item'>"+p.getPostItDescription()+"</div>");
                    List<Product> products = (List<Product>) productList.getListProduct(p.getPostItDescription());
                    if(products != null){
                           out.print("<div class='list-group-item'>") ;
                    
                        for(Product pro:products){
                       out.print("<div class='list-group-item'>") ; 
                       
                        out.print("<div class='row'><img class='imagePro' src="+ pro.getImage()+"></div>");
                        out.print("<div class='row'><a href='/product?id="+pro.getProductCode()+"'>"+pro.getProductName()+"</a></div>");
                        out.print("<div class='row'><p>"+pro.getProductBrandProprietary()+"</p></div>");
                        out.print("<div class='row'><p>"+pro.getProductUnitPrice()+" €</p></div>");
                        out.print("<div class='row'><p>"+pro.getProductWeight()+" "+ pro.getProductFormat()+" ("+pro.getProductKiloPrice()+"€/  )</p></div>");
                       // out.print("<div class='row'><p>"+pro.getProductWeight()+" "+ pro.getProductFormat()+" ("+pro.getProductKiloPrice()+"€/"+pro.getProductKiloPriceUnit()+")</p></div>");
                        
                        
                        
                       out.println("</div>");
                        
                       // out.print("<div class='poids'><p>"+pro.getProductWeight()+" "+ pro.getProductFormat()+"</p></div>");
                       // out.print("<div class='prixPoid'><p>"+pro.getProductKiloPrice()+"</p></div></div>");
                       // out.print("<div class='prixPoid'><p>"+pro.getProductKiloPrice()+"</p></div></div>");
                       // out.print("<div class='niveau3'><img class='imagePro' src="+ pro.getImage()+"></div>");
                        
                        }
                        out.print("</div>");
                    }}
                    out.print("<div class='list-group-item proposition'></div>");
                    }
                
                
                
                out.println("</div>");
                
                out.print("</ul>");  
                out.print("</div>");  
                out.print("<div class='panel-body'>");  
                out.print("<h4>Articles supprimés</h4>");  
                out.print("<ul id='removedList' class='list-group list-group-flush'>");  
                out.print("</ul>");  
                out.print("</div>");
                out.print("</div>");  
                out.print("</div> "); 
                out.print("</div> "); 
                //out.print("}"); 	 
                
                
                
                
            }  		
        }
            
             
                                 
   %>               
                        
                     
                 
                        
   <script type="text/javascript"src='../js/list.js'> </script>

 
                        
     </div>
    </div>
  <%@ include file="/vue/Footer.jsp"%>
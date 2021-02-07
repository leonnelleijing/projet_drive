<%-- 
    Document   : index
    Created on : 5 févr. 2021, 17:26:02
    Author     : leonl
--%>

<%@page import="java.util.List"%>
<%@page import="com.samrtsolutions.drive.model.Product"%>
<%@page import="com.samrtsolutions.drive.repository.ProductDaoImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            ProductDaoImpl product=new ProductDaoImpl();
            product.addProduct();
            //Product p= product.g et(1);
            List<Product> lp = product.getListProduct("pomme");
            
            for(Product var : lp){
                out.println("<p> Nom du produit : "+var.getProductName()+"</p>");
            }
        %>
      
    </body>
</html>

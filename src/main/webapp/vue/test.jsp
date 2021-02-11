<%-- 
    Document   : test
    Created on : 11 févr. 2021, 13:18:48
    Author     : maxim
--%>

<%@page import="java.util.List"%>
<%@page import="com.samrtsolutions.drive.repository.ListDaoImpl"%>
<%@page import="com.samrtsolutions.drive.model.Liste"%>
<%@page import="com.samrtsolutions.drive.model.Liste"%>
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
                   
              ListDaoImpl listList = new ListDaoImpl();
        List<Liste> listes =  listList.getAllList();
        
        if(listes != null){
            for(Liste l : listes){
                out.print("<p>Nom"+l.getListName()+"</p>") ;
            }  		
        }
        else
        out.println("<div>nullllll</div>");
            %>
    </body>
</html>

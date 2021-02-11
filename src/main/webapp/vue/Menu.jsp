<%-- 
    Document   : Menu
    Created on : 8 févr. 2021, 10:49:13
    Author     : leonl
--%>

<%@page import="com.samrtsolutions.drive.repository.RayonDaoImpl"%>
<%@page import="java.util.Set"%>
<%@page import="com.samrtsolutions.drive.model.Family"%>
<%@page import="com.samrtsolutions.drive.model.Rayon"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%!
    RayonDaoImpl rayon= new RayonDaoImpl();
    
%>
 <div class="col-md-2">
    <div class="logo">
        <a href="/"><image id="photoLogo" src="../Img/logo.png"></a>
    </div>
<div class="menu">
    <ul class="nav nav-pills nav-stacked">
        <%
            ArrayList<Rayon> rayons=(ArrayList) session.getAttribute("rayons");
            for(Rayon r: rayons){
                out.print( "<li class='maintip' role='presentation'><a href='/accueil?idRayon="+r.getNumRayon()+"'>"+r.getLibelleRayon()+"</a></li>");
                Set<Family> families= r.getFamilies();
                if(families!=null){
                    out.print("<div class='tips'>");
                    out.print(" <ul class='list-group'>");
                    for(Family f : families){
                        if(f.getParentFamily()==null){
                              out.print("<li class='list-group-item'><a href='/accueil?Idfamily="+f.getNumFamily()+"'>"+f.getNomFamily()+"</a></li>");
                        }
                    }
                    out.print("</ul> </div>");
                }
                
            }
        %>

    </ul>
</div>
</div>




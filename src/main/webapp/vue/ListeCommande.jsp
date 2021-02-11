<%-- 
    Document   : ListeCommande
    Created on : 9 févr. 2021, 19:50:43
    Author     : leonl
--%>

<%@page import="java.util.List"%>
<%@page import="com.samrtsolutions.drive.model.Commande"%>
<%@page import="com.samrtsolutions.drive.repository.MagasinDaoImpl"%>
<%@page import="com.samrtsolutions.drive.repository.CommandeDaoImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Benito - Mega Store Responsive Bootstrap 5 Template</title>
    <!-- Favicon -->
    

    <link rel="stylesheet" href="../CSS/vendor/ionicons.css" />
    <link rel="stylesheet" href="../CSS/vendor/linearicons-free.css" />
    <link rel="stylesheet" href="../CSS/vendor/font-awesome.css" />
    <link rel="stylesheet" href="../CSS/plugins/animate.min.css" />
    <link rel="stylesheet" href="../CSS/plugins/swiper-bundle.min.css" />
    <link rel="stylesheet" href="../CSS/style.css" />


</head>

<body>

    <div class="header-logo">
        <a href="accueil"> <img id="photoLogo" class=" text-center" src="../Img/logo.png"></a>
        <div class="row">
            <div class="col-12">
                <h3 class=" text-center">Liste de commandes</h3>
            </div>
        </div>
    </div>
    
    <%
      CommandeDaoImpl com= new CommandeDaoImpl();
       MagasinDaoImpl magim= new MagasinDaoImpl();
       List<Commande> commands= com.getAllCommandeToPrepareToday(magim.get(1));

    %>
    <section class="section-py">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <h3 class="title mb-5 pb-3 text-capitalize text-center">A préparer aujourd'hui</h3>
                    <div>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th scope="col">Numéro de commande</th>
                                    <th scope="col" class="text-center">Client</th>
                                    <th scope="col" class="text-center">Heure</th>
                                    <th scope="col" class="text-center">Checkout</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    for(Commande commande: commands){
                                        out.println("<tr>");
                                        out.println("<th class='text-center' scope='row'>"+commande.getNumCommande()+"</th>");
                                        out.println("<td><span class='badge bg-success'>"+commande.getClient().getFirstNameClient()+" "+ commande.getClient().getLastNameClient() +"</span></td>");
                                        out.println("<td><span>"+commande.getCreneauRetrait().getHoraire()+"</span></td>");
                                        out.println("<td><a href='./PreparerCommande.jsp?idCommande="+commande.getNumCommande()+"' class='btn btn-warning btn-hover-primary text-capitalize btn-prepare'>Préparer</a></td>");
                                        out.println("</tr>");
                                    }
                                %>
                            </tbody>
                        </table>

                    </div>
                </div>
            </div>
        </div>
    </section>

 
</body>

</html>


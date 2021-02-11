<%-- 
    Document   : MenuHorisontal
    Created on : 8 févr. 2021, 12:04:36
    Author     : leonl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="partNav">
    <nav class="navbar navbar-default">

          <!-- Brand and toggle get grouped for better mobile display -->
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Promotions</a>
          </div>

          <!-- Collect the nav links, forms, and other content for toggling -->
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <!-- <ul class="nav navbar-nav">
              <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
              <li><a href="#">Link</a></li>
              <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
                <ul class="dropdown-menu">
                  <li><a href="#">Action</a></li>
                  <li><a href="#">Another action</a></li>
                  <li><a href="#">Something else here</a></li>
                  <li role="separator" class="divider"></li>
                  <li><a href="#">Separated link</a></li>
                  <li role="separator" class="divider"></li>
                  <li><a href="#">One more separated link</a></li>
                </ul>
              </li>
            </ul> -->
            <form class="navbar-form navbar-left">
              <div class="form-group">
                <input type="text" class="form-control" placeholder="Search">
                <button type="submit" class="btn btn-default">Rechercher</button>
                <button class="btn" onclick="window.location.href='http://localhost:8080/vue/PagePanier.jsp'"><span class="glyphicon glyphicon-shopping-cart">Panier</span></button>
              </div>                                    
            </form>
             
            <ul class="nav navbar-nav navbar-right">   
              <li class="navLi"><a href="#">Se connecter</a></li>                                     
            </ul>
                <ul class="nav navbar-nav navbar-right">   
              <li class="navLi"><a href="http://localhost:8080/liste">Mes listes de course</a></li>                                     
            </ul>
          </div><!-- /.navbar-collapse -->
        <!-- /.container-fluid -->
      </nav>                             
</div>
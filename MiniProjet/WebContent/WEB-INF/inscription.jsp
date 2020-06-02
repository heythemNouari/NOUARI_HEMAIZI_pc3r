<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="fr">
<head>
	<title>Inscription</title>
    <link href="css/inscription.css" rel="stylesheet" >
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
</head>
<body>
  <%@ include file="menu.jsp" %>


<div id="fullscreen_bg" class="fullscreen_bg">
<div id="regContainer" class="container">
      <div class="row">
      <div class="col-md-6 col-md-offset-3">
        <div class="panel panel-login">
          <div class="panel-heading">
            <div class="titre">
              
              <h2> Inscription</h2>
            </div>
            <hr>
          </div>
          <div class="panel-body">
            <div class="row">
              <div class="col-lg-12">
                
                <form id="register-form" action="inscription" method="post"  >
                <div class="form-group">
                    <label for="name">Nom</label>
                    <input type="text" name="nom"  tabindex="1" class="form-control" placeholder="nom" value="" required>
                  </div>
                  <div class="form-group">
                    <label for="prenom">Prenom</label>
                    <input type="text" name="prenom"  tabindex="1" class="form-control"  required>
                  </div>
                  <div class="form-group">
                    <label for="email">EMAIL</label>
                    <input type="email" name="email"  tabindex="1" class="form-control"  value="" required>
                  </div>
                  <div class="form-group">
                    <label for="password">Mot de passe</label>
                    <input type="password" name="password"  tabindex="2" class="form-control"  required>
                  </div>
                  <div class="form-group">
                    <label for="confirm-password">Confirmer mot de passe </label>
                    <input type="password" name="password2"  tabindex="2" class="form-control"  required>
                  </div>
                  <div class="form-group">
                    <label for="num de tel">Numero de telephone </label>
                    <input type="number" name="tel"  tabindex="2" class="form-control"  required>
                  </div>
                  
                  <div class="form-group">
                    <div class="row">
                      <div class="col-sm-6 col-sm-offset-3">
                        <input type="submit" name="valider"  tabindex="4" class="form-control btn btn-register" value="s'inscrire">
                      </div>
                    </div>
                  </div>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  </div>
  <%
  			String msg = (String)request.getAttribute( "message" );
            if(msg != null){
            	if(msg.equals("ok")){
            		out.println("<div class="+"alert alert-success" +"> ");
            		out.println("<strong>membre enregistré ! bienvenue parmis nous</strong>");
            		out.println("</div>");
            	}else
            	{
            		out.println("<div class="+"alert alert-warning" +"> ");
            		out.println("<strong>il ya une ereur vérifiez vos informations saisies </strong>");
            		out.println("</div>");
            	}
            	
            }
  %>
  
  </body>
  </html>
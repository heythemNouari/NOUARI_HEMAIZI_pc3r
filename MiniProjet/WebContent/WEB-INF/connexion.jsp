


<!DOCTYPE html>
<html>
<head>
	<title>Connexion</title>
   <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" >
    
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" >

	<link rel="stylesheet" type="text/css" href="css/connexion.css">
</head>
<body>

<div class="container">
<%
  			String msg = (String)request.getAttribute( "message" );
            if(msg != null){
            	if(msg.equals("ok")){ %>
            		 <div class="alert alert-success">
   					 <strong> bienvenue parmis nous</strong>
				     </div>
            	<%}else
            	{%>
            		<div class="alert alert-danger">
    				<strong>email ou mot de passe incorrect</strong> 
 					</div>
            	<%}
            	
            }
  %>
	<div class="d-flex justify-content-center h-100">
		<div class="card">
			<div class="card-header">
				<h3>Connexion</h3>
				
			</div>
			<div class="card-body">
				<form action = "connexion"  method= "post">
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-user"></i></span>
						</div>
						<input name ="email" type="email" class="form-control" placeholder="email" required>
						
					</div>
					<div class="input-group form-group">
						<div class="input-group-prepend">
							<span class="input-group-text"><i class="fas fa-key"></i></span>
						</div>
						<input name="mdp" type="password" class="form-control" placeholder="mot de passe" required>
					</div>
					
					<div class="form-group">
						<input type="submit" value="connexion" class="btn float-right login_btn">
					</div>
				</form>
			</div>
			
			
		</div>
	</div>
</div>




</body>
</html>
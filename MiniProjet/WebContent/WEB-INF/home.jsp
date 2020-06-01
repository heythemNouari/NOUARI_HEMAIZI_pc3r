<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p> hello ! <br />
  l'utilisateur 
				<% 
				beans.Utilisateur u = (beans.Utilisateur) request.getAttribute( "ut" ); 
  				if(u != null){
  					out.println("  enregistré : " + u.getPrenom());
  				}
				%>
</p>
</body>
</html>
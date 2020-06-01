package servlets;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.Utilisateur;


@SuppressWarnings("serial")
public class Connexion extends HttpServlet {
public void doGet( HttpServletRequest request, HttpServletResponse response ) throws ServletException, IOException{
		
		this.getServletContext().getRequestDispatcher( "/WEB-INF/connexion.jsp" ).forward( request, response );

	}
public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws IOException, ServletException {
		   
		   String email = request.getParameter("email");
		   String mdps = request.getParameter("password");
	
		   /* Création ou récupération de la session */
		   HttpSession session = request.getSession();

		   /* Mise en session d'une chaîne de caractères */
		   session.setAttribute( "email", email );
	
	
		    try {
				if (isMember(email,mdps)) {
					request.setAttribute( "message", "ok" );
				}else {
					request.setAttribute( "message", "wiw" );

				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		  
			   
			   this.getServletContext().getRequestDispatcher( "/WEB-INF/connexion.jsp" ).forward( request, response );
		   }
		   
		  public boolean isMember(String email , String mdps) throws SQLException {
			  String url = "jdbc:mysql://localhost:3306/bd_pcr";
				String utilisateur = "java";
				String motDePasse = "123";
				Connection connexion = null;
				ResultSet resultat ;
				try {
				    connexion = DriverManager.getConnection( url, utilisateur, motDePasse );
				    Statement statement = connexion.createStatement();
				    String q = " select prenom from User where "
				    		+ "email = "+email+" and mdps ="+mdps+" ;";
				    
				   resultat = statement.executeQuery( q );

				   
				} catch ( SQLException e ) {
					System.out.println("erreur connexion");
				    return false ;
				} finally {
				    if ( connexion != null )
				        try {
				           
				            connexion.close();
				        } catch ( SQLException ignore ) {
				            url = url +"";
				        }
				}
				 if(resultat.next()) {
				    	return true ;
				 }else {
					 return false ;
				 }
			  
		  }
		

}

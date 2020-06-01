package beans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Utilisateur {
	private String nom;
	private String prenom;
	private String email ;
	private String mdps ;
	private String tel;
	
	public Utilisateur(String nom, String prenom, String email , String mdps , String tel) {
		this.nom =nom ;
		this.setEmail(email) ;
		this.setMdps(mdps) ;
		this.prenom = prenom ;
		this.setTel(tel) ;
	}
	public String getNom() {
		return this.nom;
	}

	public String getPrenom() {
		return this.prenom;
	}

	

	public void setNom( String nom ) {
		this.nom = nom;
	}

	public void setPrenom( String prenom ) {
		this.prenom = prenom;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getMdps() {
		return mdps;
	}
	public void setMdps(String mdps) {
		this.mdps = mdps;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public boolean setUtilisateur() throws SQLException {
		
		String url = "jdbc:mysql://localhost:3306/bd_pcr";
		String utilisateur = "java";
		String motDePasse = "123";
		Connection connexion = null;
		int statut ;
		try {
		    connexion = DriverManager.getConnection( url, utilisateur, motDePasse );
		    Statement statement = connexion.createStatement();
		    String q = " INSERT INTI User VALUES ("+ this.getNom()+","+this.getPrenom()+","+ this.getEmail()
		    		+ ","+ this.getMdps()+","+ this.getTel()+");";
		    statut = statement.executeUpdate(q);
		   
		} catch ( SQLException e ) {
		    return false ;
		} finally {
		    if ( connexion != null )
		        try {
		           
		            connexion.close();
		        } catch ( SQLException ignore ) {
		            url = url +"";
		        }
		}
		 if(statut == 1) {
		    	return true ;
		 }else {
			 return false ;
		 }
	} 
	
}

package com.example.profil;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


public class profil extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public class Client {
		private int id;
		private String nom;
		private String prenom;
		private String email;
		private int gsm;
		private String dateNaissance;
		private int points;
		private String pass;
		public Client(int id, String nom, String prenom, String email, int gsm, String dateNaissance, int points, String pass) {
		    this.id = id;
		    this.nom = nom;
		    this.prenom = prenom;
		    this.email = email;
		    this.gsm = gsm;
		    this.dateNaissance = dateNaissance;
		    this.points = points;
		    this.pass = pass;
		}

		public int getId() {
		    return id;
		}

		public void setId(int id) {
		    this.id = id;
		}

		public String getNom() {
		    return nom;
		}

		public void setNom(String nom) {
		    this.nom = nom;
		}

		public String getPrenom() {
		    return prenom;
		}

		public void setPrenom(String prenom) {
		    this.prenom = prenom;
		}

		public String getEmail() {
		    return email;
		}

		public void setEmail(String email) {
		    this.email = email;
		}

		public int getGsm() {
		    return gsm;
		}

		public void setGsm(int gsm) {
		    this.gsm = gsm;
		}

		public String getDateNaissance() {
		    return dateNaissance;
		}

		public void setDateNaissance(String dateNaissance) {
		    this.dateNaissance = dateNaissance;
		}

		public int getPoints() {
		    return points;
		}

		public void setPoints(int points) {
		    this.points = points;
		}

		public String getPass() {
		    return pass;
		}

		public void setPass(String pass) {
		    this.pass = pass;
		}
	}
	public int userId;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			HttpSession session = request.getSession();
	        int userId =  (int) session.getAttribute("userId");
	        
	        // Check if the user is logged in
	        if (userId != -1) {
	            // Retrieve the user's data from the database
	            // and display it on the page
	            // ...
	        	System.out.println("user conn : " +userId);
	            
	            // Display a logout link
	        } else {
	            // Re direct back to the login page

	        	System.out.println("user not conn : " );
	        }
		}
		catch(java.lang.NullPointerException e){
			response.sendRedirect(request.getContextPath() + "/login");
		}
		Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;

        try {
            // Register the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Open a connection
            System.out.println("Connecting to database...");
            String url = "jdbc:mysql://localhost:3306/scmclothing";
            String username = "SCM_CLOTHING";
            String password = "";
            conn = DriverManager.getConnection(url, username, password);
            
            System.out.println("Connected to database!");
            
            
            stmt = conn.createStatement();
            String sql = "SELECT * FROM CLIENT WHERE id = "+userId+"";
            rs = stmt.executeQuery(sql);
            if (rs.next()) {
                String nom = rs.getString("NOM");
                String prenom = rs.getString("PRENOM");
                String email = rs.getString("EMAIL");
                int gsm = rs.getInt("GSM");
                String dateNaissance = rs.getString("DATE_NAISSANCE");
                int points = rs.getInt("POINTS");
                System.out.println("data is : "+nom+prenom+email+gsm);
                
                request.setAttribute("nom", nom);
                request.setAttribute("prenom", prenom);
                request.setAttribute("email", email);
                request.setAttribute("gsm", gsm);
                request.setAttribute("dateNaissance", dateNaissance);
                request.setAttribute("points", points);

            }



            // Close the database resources
            rs.close();
            // Close the database resources
            stmt.close();
            conn.close();

	        request.getRequestDispatcher("/profil.jsp").forward(request, response);


            
        }catch (SQLException e) {
            System.err.println("SQL Exception: " + e.getMessage());
        } catch (ClassNotFoundException e) {
            System.err.println("Class Not Found Exception: " + e.getMessage());
        } finally {
            try {
                if (conn != null) {
                    conn.close();
                    System.out.println("Connection closed.");
                }
            } catch (SQLException e) {
                System.err.println("Error while closing the connection: " + e.getMessage());
            }
        }
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		doGet(request, response);
	}



	

}

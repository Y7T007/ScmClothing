package com.example.login;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;


@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
        request.getRequestDispatcher("/login.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        boolean isMatch = false;

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
            

            String email = request.getParameter("email");
            String passs = request.getParameter("pass");
            
            System.out.println(email+"  "+passs);

            int userId= -1;
            
            // Retrieve the products from the database
            stmt = conn.createStatement();
            String sql = "SELECT * FROM CLIENT WHERE EMAIL='" + email + "' AND PASS='" + passs + "'";
            rs = stmt.executeQuery(sql);
            if (rs.next()) {
            	userId=rs.getInt("ID");
                isMatch = true;
                // Store the user ID in the session
                HttpSession session = request.getSession();
                session.setAttribute("userId", userId);
            }
            request.setAttribute("conn", isMatch);


            // Close the database resources
            rs.close();
            // Close the database resources
            stmt.close();
            conn.close();

            request.getRequestDispatcher("/login.jsp").forward(request, response);
            

            
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
		


}

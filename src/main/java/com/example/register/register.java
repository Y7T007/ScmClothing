package com.example.register;

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
import java.io.IOException;



public class register extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static final String DB_URL = "jdbc:mysql://localhost:3306/scmclothing";
    private static final String DB_USER = "SCM_CLOTHING";
    private static final String DB_PASSWORD = "";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public register() {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        request.getRequestDispatcher("/register.jsp").forward(request, response);

    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
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

            System.out.println("Retrieving the list of tables...");

            String nom = request.getParameter("nom");
            String prenom = request.getParameter("prenom");
            String email = request.getParameter("email");
            String gsm = request.getParameter("gsm");
            String pass = request.getParameter("pass");
            String dateNaissance = request.getParameter("dateNaissance");

            stmt = conn.createStatement();
            int id= generateClientId(stmt); // A function to generate unique ID for the client


            String insertClientSql = "INSERT INTO CLIENT(ID, NOM, PRENOM, EMAIL, GSM, DATE_NAISSANCE, POINTS, PASS) "
                    + "VALUES (" + id + ", '" + nom + "', '" + prenom + "', '" + email + "', " + gsm + ", '" + dateNaissance + "', 0, '" + pass + "')";

            stmt.executeUpdate(insertClientSql);


            String sql = "select * from client;";
            rs = stmt.executeQuery(sql);
            response.sendRedirect("login");

            // Process the results
            while (rs.next()) {
                String tableName = rs.getString(1);
                System.out.println(tableName);
            }

        } catch (SQLException e) {
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

    public int generateClientId(Statement stmt) {
    	String requestid="select id from client order by id desc limit 1";
    	try {
    	    ResultSet rs = stmt.executeQuery("SELECT id FROM client ORDER BY id DESC LIMIT 1");
    	    int id = 0;
    	    if (rs.next()) {
    	    	System.out.println(rs.getInt("id"));
    	      id = rs.getInt("id")+1;
    	    }
    	    rs.close();
    	    return id;

    	} catch (SQLException e) {
            System.err.println("SQL Exception: " + e.getMessage());
        }
        // TODO: Implement a function to generate unique ID for the client
        return 1;
    }

}

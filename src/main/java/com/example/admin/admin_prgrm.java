package com.example.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class admin_prgrm extends HttpServlet {
	private static final long serialVersionUID = 1L;
	// JDBC database URL, username and password
	  private static final String DB_URL = "jdbc:mysql://localhost:3306/scmclothing";
	  private static final String DB_USER = "SCM_CLOTHING";
	  private static final String DB_PASSWORD = "";

	  // SQL INSERT statement
	  private static final String SQL_INSERT = "UPDATE VAL_CNV SET REDUCTION=?, PERCENT=?, SHIPPING=?, BIRTHDAY=?, SMEDIA=?, REGISTER=?, FREE_ITEM=?, FRIEND=?, SHOP_BONUS=? WHERE ID_SYS=0";

	  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        // TODO Auto-generated method stub
	        request.getRequestDispatcher("/admin_prgrm.jsp").forward(request, response);

	    }

	  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		    // retrieve the form data from the request parameters
		    int reduction = Integer.parseInt(request.getParameter("reduction"));
		    float percent = Float.parseFloat(request.getParameter("percent"))/100;
		    int shipping = Integer.parseInt(request.getParameter("shipping"));
		    int birthday = Integer.parseInt(request.getParameter("birthday"));
		    int smedia = Integer.parseInt(request.getParameter("smedia"));
		    int register = Integer.parseInt(request.getParameter("register"));
		    int freeItem = Integer.parseInt(request.getParameter("free_item"));
		    int friend = Integer.parseInt(request.getParameter("friend"));
		    int shopBonus = Integer.parseInt(request.getParameter("shop_bonus"));
		    	System.out.println("\tdata collected is :"+reduction+" "+percent+" "+shipping+" "+birthday+" "+smedia+" "+register+" "+freeItem+" "+friend+" "+shopBonus);
		    // try-with-resources block to auto-close the Connection and PreparedStatement
		    try (Connection conn = DriverManager.getConnection(DB_URL, DB_USER, DB_PASSWORD);
		         PreparedStatement pstmt = conn.prepareStatement(SQL_INSERT)) {
		      // set the values of the PreparedStatement parameters
		      pstmt.setInt(1, reduction);
		      pstmt.setFloat(2, percent);
		      pstmt.setInt(3, shipping);
		      pstmt.setInt(4, birthday);
		      pstmt.setInt(5, smedia);
		      pstmt.setInt(6, register);
		      pstmt.setInt(7, freeItem);
		      pstmt.setInt(8, friend);
		      pstmt.setInt(9, shopBonus);
		   // execute the INSERT statement
		      int rows = pstmt.executeUpdate();

		      // check if the INSERT statement was successful
		      if (rows > 0) {
		        // redirect to a success page
		    	  // set response content type
		            response.setContentType("text/html");

		            // get writer
		            PrintWriter out = response.getWriter();

		            // write JavaScript code that displays a pop-up message
		            out.println("<script type=\"text/javascript\">");
		            out.println("alert('Operation executed successfully.');");
		            out.println("</script>");
		            response.sendRedirect("admin_dash.jsp");
		      } else {
		        // redirect to an error page
		    	  response.setContentType("text/html");
		    	    PrintWriter out = response.getWriter();
		    	    out.println("<script type=\"text/javascript\">");
		    	    out.println("alert('Operation executed successfully');");
		    	    out.println("location='admin_prgrm.jsp';");
		    	    out.println("</script>");
		    	    response.sendRedirect("admin_prgrm");
		      }
		    } catch (SQLException e) {
		      // handle any database errors
		      e.printStackTrace();
		      response.setContentType("text/html");
	    	    PrintWriter out = response.getWriter();
	    	    out.println("<script type=\"text/javascript\">");
	    	    out.println("alert('Operation executed successfully');");
	    	    out.println("location='admin_prgrm.jsp';");
	    	    out.println("</script>");
	    	    response.sendRedirect("admin_prgrm");
		    }
	  }

}

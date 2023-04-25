package com.example;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class dashboard extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
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
	        request.getRequestDispatcher("/dashboard.jsp").forward(request, response);
		}
		catch(java.lang.NullPointerException e){
			response.sendRedirect(request.getContextPath() + "/login");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub

		doGet(request, response);
	}

}

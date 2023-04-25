package testDbConn;
import java.sql.*;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class TestDbConn
 */

public class TestDbConn extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get form data
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        
        // Insert client into database
        String url = "jdbc:mysql://localhost:3306/scm_clothing";
        String user = "127.0.0.1";
        String password = "";
        try (Connection conn = DriverManager.getConnection(url, user, password)) {
            String sql = "INSERT INTO client (name, surname, email, phone) VALUES (?, ?, ?, ?)";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setString(2, surname);
            pstmt.setString(3, email);
            pstmt.setString(4, phone);
            pstmt.executeUpdate();
        } catch (SQLException e) {
            throw new ServletException("Error inserting client into database", e);
        }
        
        // Redirect to success page
        response.sendRedirect("success.jsp");
    }

}

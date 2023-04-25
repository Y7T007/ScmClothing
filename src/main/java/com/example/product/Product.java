package com.example.product;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/product")
public class Product extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public class Products {
	    private int id;
	    private String name;
	    private String category;
	    private int value;
	    private int quantity;
	    private String imagePath;
	    private String description;

	    public Products(int id, String name, String category, int value, int quantity, String imagePath, String description) {
	        this.id = id;
	        this.name = name;
	        this.category = category;
	        this.value = value;
	        this.quantity = quantity;
	        this.imagePath = imagePath;
	        this.description = description;
	    }

	    public int getId() {
	        return id;
	    }

	    public void setId(int id) {
	        this.id = id;
	    }

	    public String getName() {
	        return name;
	    }

	    public void setName(String name) {
	        this.name = name;
	    }

	    public String getCategory() {
	        return category;
	    }

	    public void setCategory(String category) {
	        this.category = category;
	    }

	    public int getValue() {
	        return value;
	    }

	    public void setValue(int value) {
	        this.value = value;
	    }

	    public int getQuantity() {
	        return quantity;
	    }

	    public void setQuantity(int quantity) {
	        this.quantity = quantity;
	    }

	    public String getImagePath() {
	        return imagePath;
	    }

	    public void setImagePath(String imagePath) {
	        this.imagePath = imagePath;
	    }

	    public String getDescription() {
	        return description;
	    }

	    public void setDescription(String description) {
	        this.description = description;
	    }
	}

       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String productId = request.getParameter("id");
		System.out.println("the id is : "+productId);
		String productHTML="";
	        try {
	            // Load the database driver
	            Class.forName("com.mysql.cj.jdbc.Driver");

	            // Connect to the database
	            String url = "jdbc:mysql://localhost/scmclothing";
	            String username = "SCM_CLOTHING";
	            String password = "";
	            Connection conn = DriverManager.getConnection(url, username, password);

	         // Retrieve the products from the database
	            Statement stmt = conn.createStatement();
	            String sql = "SELECT * FROM ARTICLES where Id_article="+productId;
	            ResultSet rs = stmt.executeQuery(sql);
	            ArrayList<Products> productss = new ArrayList<Products>();
	            String htmldivs="";
	            int i=0;
	            while (rs.next()) {
	            	int id = rs.getInt("ID_ARTICLE");
	                String name = rs.getString("NOM_ARTICLE");
	                String category = rs.getString("CATEGORIE");
	                int value = rs.getInt("VALEUR");
	                int quantity = rs.getInt("QTE_DISPO");
	                String imagePath = rs.getString("LINK_MEDIA");
	                String description = rs.getString("Description");
	                System.out.println("this is the infos : "+name+ " " + value + " " + imagePath);
	                Products product = new Products(id, name, category, value, quantity, imagePath, description);
	                productss.add(product);
		            request.setAttribute("name", name);
		            request.setAttribute("value", value);
		            request.setAttribute("imagePath", imagePath);
		            request.setAttribute("description", description);
            	}
	            

	            // Close the database resources
	            rs.close();
	            // Close the database resources
	            stmt.close();
	            conn.close();

	            // Forward the request to the JSP
	            request.getRequestDispatcher("/product.jsp").forward(request, response);

	        } catch (Exception e) {
	            e.printStackTrace();
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

package example.com.store;

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

public class store_top extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public class Product {
        private String name;
        private double price;
        private String imagePath;
        
        public Product(String name, double price, String imagePath) {
            this.name = name;
            this.price = price;
            this.imagePath = imagePath;
        }
        
        public String getName() {
            return name;
        }
        
        public void setName(String name) {
            this.name = name;
        }
        
        public double getPrice() {
            return price;
        }
        
        public void setPrice(double price) {
            this.price = price;
        }
        
        public String getImagePath() {
            return imagePath;
        }
        
        public void setImagePath(String imagePath) {
            this.imagePath = imagePath;
        }
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
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
            String sql = "SELECT * FROM ARTICLES where categorie = 'Tops'";
            ResultSet rs = stmt.executeQuery(sql);
            ArrayList<Product> products = new ArrayList<Product>();
            String htmldivs="";
            int i=0;
            while (rs.next()) {
            	int id_prd= rs.getInt("id_article");
                String name = rs.getString("nom_article");
                String image = rs.getString("link_media");
                double price = rs.getDouble("valeur");
                System.out.println("this is the infos : "+name+ " " + price + " " + image);
                Product product = new Product(name, price, image);
                products.add(product);
                
                htmldivs += "<div class=\"div" + i + "\">";
                htmldivs += "<div class=\"card\" style=\"width: 20rem;\">";
                htmldivs += "<img src=\""+image+"\" class=\"card-img-top\" alt=\"...\">";
                htmldivs += "<div class=\"card-body\">";
                htmldivs += "<ul class=\"list-unstyled d-flex justify-content-between\" style=\"float:left;\">";
                htmldivs += "<li>";
                htmldivs += "<i class=\"text-warning fa fa-star\"></i>";
                htmldivs += "<i class=\"text-warning fa fa-star\"></i>";
                htmldivs += "<i class=\"text-warning fa fa-star\"></i>";
                htmldivs += "<i class=\"text-muted fa fa-star\"></i>";
                htmldivs += "<i class=\"text-muted fa fa-star\"></i>";
                htmldivs += "</li>";
                htmldivs += "</ul>";
                htmldivs += "<p style=\"font-weight: bolder;font-size: large; text-align: right;\">Prix : "+price+" DHs</p>";
                htmldivs += "<hr>";
                htmldivs += "<h5 class=\"card-title\">" + name + "</h5>";
                htmldivs += "<div class=\"container\">";
                htmldivs += "<span id=\"rateMe4\" class=\"feedback\"></span>";
                htmldivs += "</div>";
                htmldivs += "100% Polyester <br> Zipper closure <br> Machine Wash <br> THICKER - 2.5x thicker than...</p>";
                htmldivs += "<a href=\"product?id="+id_prd+"\" class=\"btn btn-primary\" style=\"float: right;\">Afficher les details...</a>";
                htmldivs += "</div>";
                htmldivs += "</div>";
                htmldivs += "</div>";
                i= i +1;

                System.out.println("\n division created in html");
                
            }
            
         // set the number of divs to generate

            
            // iterate over the number of divs and generate HTML



            // Set the products as an attribute for the JSP to render
            request.setAttribute("htmldivs", htmldivs);

            // Close the database resources
            rs.close();
            // Close the database resources
            stmt.close();
            conn.close();

            // Forward the request to the JSP
            request.getRequestDispatcher("/store_top.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}

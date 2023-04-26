package com.example.gen_coupon;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Random;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
/**
 * Servlet implementation class gen_coupon
 */
public class gen_coupon extends HttpServlet {
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
	public int userId = -1;
    public int type;
    private String generateCouponCode() {
        String alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        Random random = new Random();
        StringBuilder codeBuilder = new StringBuilder();
        for (int i = 0; i < 8; i++) {
            int index = random.nextInt(alphabet.length());
            codeBuilder.append(alphabet.charAt(index));
        }
        return codeBuilder.toString();
    }
    public float reduction;
    public float percent;
    public int shipping;
    public int birthday;
    public int smedia;
    public int register;
    public float freeItem;
    public int friend;
    public int shopBonus;
    
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	
		int inputValue =Integer.parseInt( request.getParameter("reduction"));
		System.out.println("\t\t\tthe amout is :"+inputValue);
//		int value = Integer.parseInt(request.getParameter("value"));

        // Generate a new coupon code
        String couponCode = generateCouponCode();
        String url = "jdbc:mysql://localhost:3306/scmclothing";
        String username = "SCM_CLOTHING";
        String password = "";
        Connection conn = null;
        Statement stmt = null;
        ResultSet rs = null;
        try {
            // Register the JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Open a connection
            System.out.println("Connecting to database...");

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
                

                request.setAttribute("points", points);

            }



            String setValueConversion="SELECT * FROM VAL_CNV";
            rs = stmt.executeQuery(setValueConversion);
            if (rs.next()) {
                reduction = (float) rs.getInt("REDUCTION") / 100;
                percent = rs.getFloat("PERCENT");
                shipping = rs.getInt("SHIPPING");
                birthday = rs.getInt("BIRTHDAY");
                smedia = rs.getInt("SMEDIA");
                register = rs.getInt("REGISTER");
                freeItem = (float) rs.getInt("FREE_ITEM") / 100;
                friend = rs.getInt("FRIEND");
                shopBonus = rs.getInt("SHOP_BONUS");
		    	System.out.println("\tdata collected is :"+reduction+" "+percent+" "+shipping+" "+birthday+" "+smedia+" "+register+" "+freeItem+" "+friend+" "+shopBonus);
                

		    	request.setAttribute("reduction", reduction);
		    	request.setAttribute("percent", percent);
		    	request.setAttribute("ship", shipping);
		    	request.setAttribute("free", freeItem);
		    	switch (type) {
		        case 1:
		            // Handle type 1
		        	request.setAttribute("conv",percent);
		        	request.setAttribute("op","%");
		            break;
		        case 3:
		            // Handle type 2
		        	request.setAttribute("conv",reduction);
		        	request.setAttribute("op","Dhs");

		            break;
		        case 2:
		            // Handle type 3
		        	request.setAttribute("val",shipping);
		            break;
		        case 4:
		            // Handle type 4
		        	request.setAttribute("conv",freeItem);
		        	request.setAttribute("op","Dhs");
		            break;
		        default:
		            // Handle unexpected type value
		            break;
		        
		    }
		    	

            }
            // Close the database resources
            rs.close();
            
            // Close the database resources




            
        }catch (SQLException e) {
            System.err.println("SQL Exception: " + e.getMessage());
        } catch (ClassNotFoundException e) {
            System.err.println("Class Not Found Exception: " + e.getMessage());
        } finally {
            if (conn != null) {
			   
			    System.out.println("Connection closed.");
			}
        }
        
        float valueC = 0;
    	String coupon_val="";
    	switch (type) {
        case 1:
            // Handle type 1
        	 valueC=percent*inputValue;
        	 coupon_val="-"+ valueC+"%" ;
            break;
        case 3:
            // Handle type 2
        	 valueC=reduction*inputValue;
        	 coupon_val= "-"+valueC+"Dhs" ;

            break;
        case 2:
            // Handle type 3

        	 coupon_val= "Livraison Gratuite" ;
            break;
        case 4:
            // Handle type 4
        	 valueC=freeItem*inputValue;
        	 coupon_val="Objet Gratuit de " +valueC+"Dhs" ;
            break;
        default:
            // Handle unexpected type value
            break;

        
    }
    	request.setAttribute("coupon",couponCode);
    	request.setAttribute("value",coupon_val);


    	
    	System.out.println("\t\t\t\t\t\t\t\t\tdata to send is :"+coupon_val+" "+couponCode);
    	// Store the variable in the session

        request.getRequestDispatcher("/gen_coupon.jsp").forward(request, response);

    	try ( Connection conn1 = DriverManager.getConnection(url, username, password)) {
            String sql = "INSERT INTO COUPONS (CODE_COUPON, VALEUR, ETAT, type) VALUES (?, ?, ?, ?)";
            PreparedStatement stmt1 = conn.prepareStatement(sql);
            stmt1.setString(1, couponCode);
            stmt1.setInt(2,(int)valueC);
            stmt1.setInt(3, 0);
            stmt1.setInt(4, type);
            stmt1.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            throw new ServletException("Database access error", e);
        }
    	request.getRequestDispatcher("/gen_coupon.jsp").forward(request, response);
    	try {
			stmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        
	}
    
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 type = Integer.parseInt( request.getParameter("type"));
		 request.setAttribute("type", type);
		System.out.println("the type is : "+type);
		try {
			HttpSession session = request.getSession();
	        userId =  (int) session.getAttribute("userId");

	        
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
                

                request.setAttribute("points", points);

            }



            String setValueConversion="SELECT * FROM VAL_CNV";
            rs = stmt.executeQuery(setValueConversion);
            if (rs.next()) {
                reduction = (float) rs.getInt("REDUCTION") / 100;
                percent = rs.getFloat("PERCENT");
                shipping = rs.getInt("SHIPPING");
                birthday = rs.getInt("BIRTHDAY");
                smedia = rs.getInt("SMEDIA");
                register = rs.getInt("REGISTER");
                freeItem = (float) rs.getInt("FREE_ITEM") / 100;
                friend = rs.getInt("FRIEND");
                shopBonus = rs.getInt("SHOP_BONUS");
		    	System.out.println("\tdata collected is :"+reduction+" "+percent+" "+shipping+" "+birthday+" "+smedia+" "+register+" "+freeItem+" "+friend+" "+shopBonus);
                

		    	request.setAttribute("reduction", reduction);
		    	request.setAttribute("percent", percent);
		    	request.setAttribute("ship", shipping);
		    	request.setAttribute("free", freeItem);
		    	switch (type) {
		        case 1:
		            // Handle type 1
		        	request.setAttribute("conv",percent);
		        	request.setAttribute("op","%");
		            break;
		        case 3:
		            // Handle type 2
		        	request.setAttribute("conv",reduction);
		        	request.setAttribute("op","Dhs");

		            break;
		        case 2:
		            // Handle type 3
		        	request.setAttribute("val",shipping);
		            break;
		        case 4:
		            // Handle type 4
		        	request.setAttribute("conv",freeItem);
		        	request.setAttribute("op","Dhs");
		            break;
		        default:
		            // Handle unexpected type value
		            break;
		        
		    }
		    	

            }
            // Close the database resources
            rs.close();
            
            // Close the database resources

	        request.getRequestDispatcher("/gen_coupon.jsp").forward(request, response);


            
        }catch (SQLException e) {
            System.err.println("SQL Exception: " + e.getMessage());
        } catch (ClassNotFoundException e) {
            System.err.println("Class Not Found Exception: " + e.getMessage());
        } finally {
            if (conn != null) {
			    
			    System.out.println("Connection closed.");
			}
        }
    }


	

}

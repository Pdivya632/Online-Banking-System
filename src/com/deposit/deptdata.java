package com.deposit;

import java.io.IOException;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dept.UserDept;
import com.model.User;
import com.sun.jdi.connect.spi.Connection;

/**
 * Servlet implementation class deptdata
 */
@WebServlet("/deptdata")
public class deptdata extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public deptdata() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";  
		    final String DB_URL = "jdbc:mysql://localhost/project";

		   //  Database credentials
		    final String USER = "Snehal";
		   final String PASS = "atikna";
		   
		System.out.println("hi");
	    Connection conn = null;
	    PreparedStatement stmt = null;

	    //STEP 2: Register JDBC driver
	       Class.forName(JDBC_DRIVER);

	      //STEP 3: Open a connection
	      System.out.println("Connecting to a selected database...");
	   
			conn = (Connection) DriverManager.getConnection(DB_URL, USER, PASS);
		
	    System.out.println("Connected database successfully...");
	    
	    
			}
		    catch(Exception e)
		    {
		  	  System.out.println("wrong");
		  	  e.printStackTrace();
		    }
		    System.out.println("hii");
			 String username = request.getParameter("username");
		        String password = request.getParameter("password");
		        String amount = request.getParameter("amount");
		        HttpSession session1 = request.getSession();
		        session1.setAttribute("amount",amount);
		        System.out.println("hiii");
		        
		        UserDept userDept = new UserDept();
		        
		         
			 try {
		            User user = userDept.checkLogin(username, password);
		            String destPage="dep.jsp";
		             System.out.println("fiv");
		            if (user != null) {
		            	HttpSession session = request.getSession();
		                session.setAttribute("user", user);
		                
		              
		                destPage = "home3.jsp";
		            } else 
		            {
		                String message = "Invalid email/password";
		                request.setAttribute("message", message);
		            }
		             
		            RequestDispatcher dispatcher = request.getRequestDispatcher(destPage);
		            dispatcher.forward(request, response);
		        
		            
		        } catch (SQLException | ClassNotFoundException ex) {
		            throw new ServletException(ex);
		        }
			 
			 
			doGet(request, response);
		
		}
	}



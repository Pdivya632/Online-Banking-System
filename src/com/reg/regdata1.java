package com.reg;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class regdata1
 */
@WebServlet("/regdata1")
public class regdata1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
	    	// JDBC driver name and database URL
	    	    final String JDBC_DRIVER = "com.mysql.cj.jdbc.Driver";  
	    	    final String DB_URL = "jdbc:mysql://localhost/project";

	    	   //  Database credentials
	    	    final String USER = "root";
	    	   final String PASS = "9112000";
	    	System.out.println("hi");
   Connection conn = null;
   PreparedStatement stmt = null;
  
      //STEP 2: Register JDBC driver
      Class.forName(JDBC_DRIVER);
   
      //STEP 3: Open a connection
      System.out.println("Connecting to a selected database...");
      conn = DriverManager.getConnection(DB_URL, USER, PASS);
      System.out.println("Connected database successfully...");
      
      //STEP 4: Execute a query
      System.out.println("Inserting records into the table...");
      stmt = conn.prepareStatement("insert into pro values(?,?,?,?,?,?,?)");
      stmt.setString(1, request.getParameter("Username"));
      stmt.setString(2, request.getParameter("Accountno"));
      stmt.setString(3, request.getParameter("Password"));
      stmt.setString(4,request.getParameter("RePassword"));
      stmt.setString(5,request.getParameter("Address"));
      stmt.setString(6,request.getParameter("Ammount"));
      stmt.setString(7,request.getParameter("Phone"));
     
     
      stmt.executeUpdate();
      System.out.println("Inserted records into the table...");
request.getRequestDispatcher("login1.jsp").forward(request, response);
	    	
	   }
	    catch(Exception e)
	    {
	  	  System.out.println("wrong");
	  	  e.printStackTrace();
	    }
	}
	}



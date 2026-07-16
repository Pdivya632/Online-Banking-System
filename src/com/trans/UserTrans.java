 package com.trans;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.model.User;

public class UserTrans {
	public User checkLogin(String username, String password ) throws SQLException,
    ClassNotFoundException {

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
  
  conn = DriverManager.getConnection(DB_URL, USER, PASS);
  String sql = "SELECT * FROM pro WHERE uname = ? and pass = ?  ";
  PreparedStatement statement = conn.prepareStatement(sql);
  statement.setString(1, username);
  statement.setString(2, password);
  
  
  

  ResultSet result = statement.executeQuery();

  User user = null;

  if (result.next()) {
      user = new User();
      user.setUname(result.getString("uname"));
      user.setPass(result.getString("pass"));
      
  }

  conn.close();

  return user;
    	
  

}

}
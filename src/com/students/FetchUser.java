package com.students;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class FetchUser {
	public static boolean fetchUser(String email) {
		boolean found = false;
		 try {
			 Class.forName("oracle.jdbc.driver.OracleDriver");
		     String dbuser = "system";
		     String dbpswd = "33535";
		     Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",dbuser,dbpswd);
		     PreparedStatement ps = con.prepareStatement("SELECT * FROM SIGNUP where email=?");
		     ps.setString(1, email);
		     ResultSet rs = ps.executeQuery();
		     found = rs.next();
		     con.close();  
		 }
		 catch(Exception e) {
		          e.printStackTrace();
		 }
		 return found;    	 
	}   
}

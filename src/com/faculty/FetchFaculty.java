package com.faculty;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class FetchFaculty {
	public static boolean fetchUser(String facemail) {
		boolean found = false;
		 try {
			 Class.forName("oracle.jdbc.driver.OracleDriver");
		     String dbuser = "system";
		     String dbpswd = "33535";
		     Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",dbuser,dbpswd);
		     PreparedStatement ps = con.prepareStatement("SELECT * FROM FACULTY where facemail=?");
		     ps.setString(1, facemail);
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

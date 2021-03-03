package com.faculty;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class FacultyValidate {
    public static boolean checkFaculty(String facemail,String facpassword) 
    {
        boolean st =false;
        try {
        	Class.forName("oracle.jdbc.driver.OracleDriver");
			String dbuser = "system";
			String dbpswd = "33535";
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",dbuser,dbpswd);
			PreparedStatement ps = con.prepareStatement("SELECT * FROM FACULTY where facemail=? and facpassword=?");
            ps.setString(1, facemail);
            ps.setString(2, facpassword);
            ResultSet rs = ps.executeQuery();
            st = rs.next();
            con.close();
        }
        catch(Exception e) {
            e.printStackTrace();
        }
        return st;                 
    }
}

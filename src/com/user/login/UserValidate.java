package com.user.login;

import java.sql.*;

public class UserValidate {
    public static boolean checkUser(String email,String password) 
    {
        boolean st =false;
        try {
        	Class.forName("oracle.jdbc.driver.OracleDriver");
			String dbuser = "TARIQUE";
			String dbpswd = "190031065@17";
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",dbuser,dbpswd);
			PreparedStatement ps = con.prepareStatement("SELECT * FROM SIGNUP where email=? and password=?");
            ps.setString(1, email);
            ps.setString(2, password);
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
package com.admin;

import java.sql.*;

public class AdminValidate {
	public static boolean checkAdmin(String uname,String pass) {
		boolean st =false;
        try {
        	Class.forName("oracle.jdbc.driver.OracleDriver");
			String dbuser = "system";
			String dbpswd = "33535";
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",dbuser,dbpswd);
			PreparedStatement ps = con.prepareStatement("SELECT * FROM ADMINCRED where adminusr=? and adminpass=?");
            ps.setString(1, uname);
            ps.setString(2, pass);
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
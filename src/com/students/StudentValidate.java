package com.students;

import java.sql.*;

import com.jdbc.JdbcConnection;

public class StudentValidate {
    public static boolean checkStudent(String email,String password) 
    {
        boolean st =false;
        try {
        	Connection con = JdbcConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM STUDENT WHERE EMAIL=? AND PASSWORD=?");
            ps.setString(1, email);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            st = rs.next();
            JdbcConnection.closeConnection();
        }
        catch(Exception e) {
            e.printStackTrace();
        }
        return st;                 
    }   
}
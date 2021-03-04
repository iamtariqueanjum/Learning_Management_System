package com.faculty;

import com.jdbc.JdbcConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class FacultyValidate {
    public static boolean checkFaculty(String facultyemail,String facultypassword) 
    {
        boolean st =false;
        try {
        	Connection con = JdbcConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("SELECT * FROM FACULTY WHERE EMAIL=? and PASSWORD=?");
            ps.setString(1, facultyemail);
            ps.setString(2, facultypassword);
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

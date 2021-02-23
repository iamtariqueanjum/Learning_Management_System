package com.all.logout;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Logout
 */
@WebServlet("/Logout")
public class Logout extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		try {
    		Class.forName("oracle.jdbc.driver.OracleDriver");
			String dbuser = "system";
			String dbpswd = "33535";
     		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",dbuser,dbpswd);
    		PreparedStatement ps = con.prepareStatement("INSERT INTO FaclogoutData(facemail,LogoutTime) VALUES(?,CURRENT_TIMESTAMP)");
    		ps.setString(1, (String) session.getAttribute("facemail"));
            ResultSet rs = ps.executeQuery();
    		con.close();
    	}
    	catch(Exception e) {
    		e.printStackTrace();
    	}
		session.removeAttribute("facemail");
		session.invalidate();
		response.sendRedirect("facultyLogin.jsp");
	}
}

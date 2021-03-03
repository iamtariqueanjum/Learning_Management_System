package com.students;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect(request.getContextPath() + "/login.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub		else
		String email = request.getParameter("email");
        String password = request.getParameter("password");
    	PrintWriter out = response.getWriter();
        if(UserValidate.checkUser(email, password))
        {
        	HttpSession session=request.getSession();
        	session.setAttribute("email", email);
        	try {
        		Class.forName("oracle.jdbc.driver.OracleDriver");
    			String dbuser = "system";
    			String dbpswd = "33535";
         		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",dbuser,dbpswd);
         		
        		PreparedStatement ps = con.prepareStatement("INSERT INTO StuloginData(email,LoginTime) VALUES(?,CURRENT_TIMESTAMP)");
        		ps.setString(1, email);
                ResultSet rs = ps.executeQuery();
        		con.close();
        	}
        	catch(Exception e) {
        		e.printStackTrace();
        	}
        	response.sendRedirect("home.jsp");
        }
        else
        {
        	response.setContentType("text/html");
        	out.println("<script type=\"text/javascript\">");
        	out.println("alert('Email or password is incorrect');");
        	out.println("location='login.jsp';");
        	out.println("</script>");
        	RequestDispatcher rs = request.getRequestDispatcher("login.jsp");
        	rs.include(request, response);
        }
	}
}
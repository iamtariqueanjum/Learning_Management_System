package com.user.signup;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class SignupServlet
 */
@WebServlet("/signup")
public class SignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect(request.getContextPath() + "/signup.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String firstname = request.getParameter("fname");
        String lastname = request.getParameter("lname");
        String phone = request.getParameter("phno");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        try {
        	Class.forName("oracle.jdbc.driver.OracleDriver");
			String dbuser = "TARIQUE";
			String dbpswd = "190031065@17";
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",dbuser,dbpswd);
			String sql="INSERT INTO SIGNUP(FIRSTNAME,LASTNAME,PHONE,EMAIL,PASSWORD) VALUES(?,?,?,?,?)";
			PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, firstname);
            ps.setString(2, lastname);
            ps.setString(3, phone);
            ps.setString(4, email);
            ps.setString(5, password);
            int i = ps.executeUpdate();
            PrintWriter out=response.getWriter();
            response.setContentType("text/html");
        	if(i>0) {
    			out.println("<script type=\"text/javascript\">");
            	out.println("alert('Registration Successfull!!!');");
            	out.println("location='signup.jsp';");
            	out.println("</script>");
            	RequestDispatcher rs = request.getRequestDispatcher("login.jsp");
            	rs.include(request, response);
    		}
    		else {
    			out.println("<script type=\"text/javascript\">");
            	out.println("alert('Registration UnSuccessfull!!!');");
            	out.println("location='signup.jsp';");
            	out.println("</script>");
            	RequestDispatcher rs = request.getRequestDispatcher("signup.jsp");
            	rs.include(request, response);
    		}
            con.close();
        }
		catch(Exception e) {
			System.out.println(e);
		}
	}

}

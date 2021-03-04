package com.students;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.jdbc.JdbcConnection;
/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/studentLogin")
public class StudentLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect(request.getContextPath() + "/studentLogin.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub		else
		String email = request.getParameter("email");
        String password = request.getParameter("password");
    	PrintWriter out = response.getWriter();
        if(StudentValidate.checkStudent(email, password))
        {
        	HttpSession session=request.getSession();
        	session.setAttribute("email", email);
        	try {
        		Connection con = JdbcConnection.getConnection();
        		PreparedStatement ps = con.prepareStatement("INSERT INTO STULOGINDATA(STUEMAIL,STULOGINTIME) VALUES(?,CURRENT_TIMESTAMP)");
        		ps.setString(1, email);
                ps.executeQuery();
                JdbcConnection.closeConnection();
        	}
        	catch(Exception e) {
        		e.printStackTrace();
        	}
        	response.sendRedirect("studentHome.jsp");
        }
        else
        {
        	response.setContentType("text/html");
        	out.println("<script type=\"text/javascript\">");
        	out.println("alert('Email or password is incorrect');");
        	out.println("location='studentLogin.jsp';");
        	out.println("</script>");
        	RequestDispatcher rs = request.getRequestDispatcher("studentLogin.jsp");
        	rs.include(request, response);
        }
	}
}
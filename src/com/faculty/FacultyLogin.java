package com.faculty;

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
 * Servlet implementation class FacultyLoginServlet
 */
@WebServlet("/facultyLogin")
public class FacultyLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FacultyLogin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect(request.getContextPath() + "/facultyLogin.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String facultyemail = request.getParameter("facultyemail");
        String facultypassword = request.getParameter("facultypassword");
    	PrintWriter out = response.getWriter();
        if(FacultyValidate.checkFaculty(facultyemail, facultypassword))
        {
        	HttpSession session=request.getSession();
        	session.setAttribute("facultyemail", facultyemail);
        	try {
        		Connection con = JdbcConnection.getConnection();
        		PreparedStatement ps = con.prepareStatement("INSERT INTO FACLOGINDATA(FACEMAIL,FACLOGINTIME) VALUES(?,CURRENT_TIMESTAMP)");
        		ps.setString(1, facultyemail);
                ps.executeQuery();
        		JdbcConnection.closeConnection();
        	}
        	catch(Exception e) {
        		e.printStackTrace();
        	}
        	response.sendRedirect("facultyHome.jsp");
        }
        else
        {
        	response.setContentType("text/html");
        	out.println("<script type=\"text/javascript\">");
        	out.println("alert('Email or password is incorrect');");
        	out.println("location='facultyLogin.jsp';");
        	out.println("</script>");
        	RequestDispatcher rs = request.getRequestDispatcher("facultyLogin.jsp");
        	rs.include(request, response);
        }
	}

}

package com.faculty.signup;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FacultySignupServlet
 */
@WebServlet("/facultySignup")
public class FacultySignupServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FacultySignupServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.sendRedirect(request.getContextPath() + "/facultySignup.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String facid = request.getParameter("facid");
        String facname = request.getParameter("facname");
        String facphone = request.getParameter("facphone");
        String facemail = request.getParameter("facemail");
        String facpassword = request.getParameter("facpassword");
        try {
        	Class.forName("oracle.jdbc.driver.OracleDriver");
			String dbuser = "TARIQUE";
			String dbpswd = "190031065@17";
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe",dbuser,dbpswd);
			PrintWriter out=response.getWriter();
            response.setContentType("text/html");
			if(FetchFaculty.fetchUser(facemail)) {
				out.println("<script type=\"text/javascript\">");
            	out.println("alert('You are already registered with this email!!!');");
            	out.println("location='facultySignup.jsp';");
            	out.println("</script>");
			}
			else {
				String sql="INSERT INTO FACULTY(FACID,FACNAME,FACPHONE,FACEMAIL,FACPASSWORD) VALUES(?,?,?,?,?)";
				PreparedStatement ps = con.prepareStatement(sql);
	            ps.setString(1, facid);
	            ps.setString(2, facname);
	            ps.setString(3, facphone);
	            ps.setString(4, facemail);
	            ps.setString(5, facpassword);
	            int i = ps.executeUpdate();
	            if(i>0) {
	    			out.println("<script type=\"text/javascript\">");
	            	out.println("alert('Registration Successfull!!!');");
	            	out.println("location='facultySignup.jsp';");
	            	out.println("</script>");
	            }
	    		else {
	    			out.println("<script type=\"text/javascript\">");
	            	out.println("alert('Registration UnSuccessfull!!!');");
	            	out.println("location='facultySignup.jsp';");
	            	out.println("</script>");
	    		}
	            con.close();
			}
        }
		catch(Exception e) {
			System.out.println(e);
		}
	}

}

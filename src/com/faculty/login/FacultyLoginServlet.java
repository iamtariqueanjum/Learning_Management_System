package com.faculty.login;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class FacultyLoginServlet
 */
@WebServlet("/facultyLogin")
public class FacultyLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FacultyLoginServlet() {
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
		String facemail = request.getParameter("facemail");
        String facpassword = request.getParameter("facpassword");
    	PrintWriter out = response.getWriter();
        if(FacultyValidate.checkFaculty(facemail, facpassword))
        {
            RequestDispatcher rs = request.getRequestDispatcher("facultyHome.jsp");
            rs.forward(request, response);
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

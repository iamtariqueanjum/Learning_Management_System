package com.students;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.nio.file.Paths;
import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.jdbc.JdbcConnection;

/**
 * Servlet implementation class StudentUploadAssignment
 */
@WebServlet("/studentUploadAssignment")
@MultipartConfig
public class StudentUploadAssignment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentUploadAssignment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection con = JdbcConnection.getConnection();
        HttpSession session = request.getSession();
        PrintWriter out = response.getWriter();
    	try {        		

        if(session.getAttribute("email")!=null) {
        	  String author = (String)session.getAttribute("email");
      	      String courseId = (String)session.getAttribute("courseId");
        	  Part filePart = request.getPart("file"); 
        	  String title = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
        	  InputStream fileContent = filePart.getInputStream();

        	  PreparedStatement stmt = con.prepareStatement("INSERT INTO COURSEASSIGNMENTS VALUES (?, ?, ?, ?, CURRENT_TIMESTAMP)");
        	  stmt.setString(1, courseId);
        	  stmt.setString(2, title);
			  stmt.setBinaryStream(3, fileContent);
			  stmt.setString(4, author);
			  stmt.executeQuery();
			  			  
  			  JdbcConnection.closeConnection();
	  		  
  			  response.setContentType("text/html");
	          out.println("<script type=\"text/javascript\">");
	          out.println("alert('File Uploaded!!! ');");
	          out.println("location='studentUploadCourseAssignment.jsp';");
	          out.println("</script>");
	          
        }
	}
	catch(Exception e) {
		System.out.println(e);
		response.setContentType("text/html");
        out.println("<script type=\"text/javascript\">");
        out.println("alert('File Upload Failed');");
        out.println("location='studentUploadCourseAssignment.jsp';");
        out.println("</script>");

	}			
	}

}

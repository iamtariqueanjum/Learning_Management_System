<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.sql.*" %>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="ISO-8859-1">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<title>Delete a Student</title>
			<link
		    rel="stylesheet"
		    href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
		 />
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
			<link rel="stylesheet" href="login.css"/>
		</head>
		<body>
		<%
		  	if(session.getAttribute("adminusername")==null){
		  		response.setContentType("text/html");
		    	out.println("<script type=\"text/javascript\">");
		    	out.println("alert('Admin Access Only!!!');");
		    	out.println("location='adminLogin.jsp';");
		    	out.println("</script>");
		    	RequestDispatcher rs = request.getRequestDispatcher("adminLogin.jsp");
		    	rs.include(request, response);
		  	}
  		%>
		<form class="sign-up-form" action="deleteStudent" method="post">
		  <div class="form-group">
		    <label for="email">Email address:</label>
		    <input type="email" class="input-box" id="email" placeholder="Enter email">
		  </div>
		  <div class="form-group">
		    <label for="cnfrmemail">Confirm Email address:</label>
		    <input type="email" class="input-box" id="cnfrmemail" placeholder="Enter email again">
		  </div>
		  <div class="form-group">
		    <label for="password">Enter Password:</label>
		    <input type="password" class="input-box" id="password" placeholder="Enter Password">
		  </div>
		  <div class="form-group">
		    <label for="cnfrmpassword">Confirm Password:</label>
		    <input type="password" class="input-box" id="cnfrmpassword" placeholder="Enter Password again">
		  </div>
		  <button type="submit">Submit</button>
		</form>
		</body>
	</html>
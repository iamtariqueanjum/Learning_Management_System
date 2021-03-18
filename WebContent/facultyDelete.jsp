<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.io.*,java.sql.*" %>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="ISO-8859-1">
			<meta name="viewport" content="width=device-width, initial-scale=1">
			<title>Delete a Faculty</title>
			<link rel="stylesheet" href="styles.css"/>
			<link
		    rel="stylesheet"
		    href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
		 />
			<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
			<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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
  		<div class="sign-up-form">
			<form class="signForm" action="deleteFaculty" method="post">
			    <label for="email">Email address:</label>
			    <input type="email" class="input-box" id="email" name="email" placeholder="Enter email" required>
			    <label for="cnfrmemail">Confirm Email address:</label>
			    <input type="email" class="input-box" id="cnfrmemail" name="cnfrmemail" placeholder="Enter email again" required>
			    <label for="password">Enter Password:</label>
			    <input type="password" class="input-box" id="password" name="password" placeholder="Enter Password" required>
			    <label for="cnfrmpassword">Confirm Password:</label>
			    <input type="password" class="input-box" id="cnfrmpassword" name="cnfrmpassword" placeholder="Enter Password again" required>
			  <button type="submit">DELETE FACULTY</button>
			</form>
			<br>
			<form action="adminHome.jsp">
	        	<button type="submit">HOME</button>
	    	</form>	
	    </div>
      </body>
	</html>
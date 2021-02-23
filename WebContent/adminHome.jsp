<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>ADMIN HOME</title>
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
				response.sendRedirect("adminLogin.jsp");
			}
		%>
		<nav class="navbar navbar-inverse">
		  <div class="container-fluid">
		    <div class="navbar-header">
		      <a class="navbar-brand" href="#">LMS</a>
		    </div>
		    <ul class="nav navbar-nav">
		      <li class="active"><a href="#">Home</a></li>
		      <li class="dropdown">
		        <a class="dropdown-toggle" data-toggle="dropdown" href="#">STUDENT
		        <span class="caret"></span></a>
		        <ul class="dropdown-menu">
		          <li><a href="signup.jsp">ADD A STUDENT</a></li>
		          <li><a href="#">DELETE A STUDENT</a></li>
		          <li><a href="#">VIEW STUDENTS</a></li>
		        </ul>
		      </li>
		      <li class="dropdown">
		        <a class="dropdown-toggle" data-toggle="dropdown" href="#">FACULTY
		        <span class="caret"></span></a>
		        <ul class="dropdown-menu">
		          <li><a href="facultySignup.jsp">ADD A FACULTY</a></li>
		          <li><a href="#">DELETE A FACULTY</a></li>
		          <li><a href="#">VIEW FACULTY</a></li>
		        </ul>
		      </li>
		    </ul>
			<form class="navbar-form navbar-right" action="adminLogout">
		      <button type="submit" class="btn btn-default">Logout</button>
		    </form>
		  </div>
		</nav>
		<h1>Welcome ADMIN</h1>
	</body>
</html>
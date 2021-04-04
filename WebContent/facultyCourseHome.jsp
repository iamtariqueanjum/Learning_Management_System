<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Course Home</title>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
    <script src="js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
	<% if(session.getAttribute("facultyemail")==null){
    response.sendRedirect("facultyLogin.jsp"); } %>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
  		<div class="container-fluid">
    	  <ul class="navbar-nav me-auto mb-2 mb-lg-0">
	        <li class="nav-item">
	          <a class="nav-link active" aria-current="page" href="facultyHome.jsp">Home</a>
	        </li>
	      </ul>
	      <form class="navbar-form navbar-right" action="facultyLogout" method="post">
           		<button class="btn btn-outline-dark" type="submit">Logout</button>	
     	  </form>
	    </div>
	</nav>
    <ul class="nav nav-tabs">
	  <li class="nav-item">
	    <a class="nav-link active" aria-current="page" href="#general">COURSE</a>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link" href="#">ASSIGNMENTS</a>
	  </li>
	  <li class="nav-item">
	    <a class="nav-link" href="#">MATERIAL</a>
	  </li>
	</ul>
	<h2 id="general">COURSE CONTENT</h2>
</body>
</html>
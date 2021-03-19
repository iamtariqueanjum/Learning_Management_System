<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<title>Course Home</title>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
    />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<% 
	if(session.getAttribute("email")==null) {
		response.sendRedirect("studentLogin.jsp"); 	
	} 
    %>
    <nav class="navbar navbar-inverse">
      <div class="container-fluid">
        <ul class="nav navbar-nav">
          <li class="active"><a href="studentHome.jsp">Home</a></li>
        </ul>
        <form class="navbar-form navbar-right" action="studentLogout" method="post">
          <button type="submit" class="btn btn-default">Logout</button>
        </form>
      </div>
    </nav>
	<h1>Student Course Home</h1>
</body>
</html>
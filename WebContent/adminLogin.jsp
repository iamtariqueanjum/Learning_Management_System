<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>ADMIN - LOGIN</title>
	<link rel="stylesheet" href="styles.css">
	<link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
    />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<%
  	if(session.getAttribute("adminusername")!=null){
  		response.setContentType("text/html");
    	out.println("<script type=\"text/javascript\">");
    	out.println("alert('You were Already Logged in');");
    	out.println("location='adminHome.jsp';");
    	out.println("</script>");
    	RequestDispatcher rs = request.getRequestDispatcher("adminHome.jsp");
    	rs.include(request, response);
  	}
	if(session.getAttribute("email")!=null){
  		response.setContentType("text/html");
    	out.println("<script type=\"text/javascript\">");
    	out.println("alert('You were Already Logged in');");
    	out.println("location='studentHome.jsp';");
    	out.println("</script>");
    	RequestDispatcher rs = request.getRequestDispatcher("studentHome.jsp");
    	rs.include(request, response);
  	}
	if(session.getAttribute("facultyemail")!=null){
		response.setContentType("text/html");
	  	out.println("<script type=\"text/javascript\">");
	  	out.println("alert('You were Already Logged in');");
	  	out.println("location='facultyHome.jsp';");
	  	out.println("</script>");
	  	RequestDispatcher rs = request.getRequestDispatcher("facultyHome.jsp");
	  	rs.include(request, response);
	}
  	%>
	<div class="sign-up-form">
      <form name="loginForm" action="adminLogin" method="post">
      	<label>ADMIN LOGIN</label><br>
        <label for="adminusername">username: </label>
        <input
          name="adminusername"
          type="text"
          class="input-box"
          placeholder="Enter your username"
          required
        />
        <label for="adminpassword">password: </label>
        <input
          name="adminpassword"
          type="password"
          class="input-box"
          placeholder="Enter your password"
          required
        />
        <button type="submit">LOGIN</button>
      </form>
      <hr/>
      <form action="index.jsp">
			<button type="submit">SELECT PORTAL</button>
	  </form>
      </div>
</body>
</html>
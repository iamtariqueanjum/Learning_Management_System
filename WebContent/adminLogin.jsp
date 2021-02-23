<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>ADMIN - LOGIN</title>
	<link rel="stylesheet" href="login.css">
	<link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
    />
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
  %>
	<div class="sign-up-form">
      <form name="loginForm" action="admin" method="post">
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
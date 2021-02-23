<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Home-LMS</title>
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
    />
    <link rel="stylesheet" href="home.css" />
  </head>
  <body>
  <%
  if(session.getAttribute("email")==null) {
		response.setContentType("text/html");
  	out.println("<script type=\"text/javascript\">");
  	out.println("alert('Login First');");
  	out.println("location='home.jsp';");
  	out.println("</script>");
		response.sendRedirect("login.jsp");
	}
  %>
    <h1>Welcome. You are logged in</h1>
    <form action="userLogout">
    	<input type="submit" value="Logout">
    </form>
  </body>
  <footer>
      <p>
        For any queries,Contact us<br />
        <a href="mailto:p6@example.com">p6@example.com</a>
      </p>
	</footer>
</html>

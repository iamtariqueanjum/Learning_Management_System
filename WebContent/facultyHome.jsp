<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Home Page -LMS</title>
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
    />
  </head>
  <body>
  <%
  	if(session.getAttribute("facemail")==null){
  		response.sendRedirect("facultyLogin.jsp");
  	}
  %>
    <h1>Welcome Faculty. You are logged in</h1>
    <form action="Logout">
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
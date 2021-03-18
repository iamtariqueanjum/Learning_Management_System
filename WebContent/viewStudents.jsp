<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="com.jdbc.JdbcConnection"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>View Students</title>
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
    />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  </head>
  <body>
  	<% if(session.getAttribute("adminusername")==null){
    		response.sendRedirect("adminLogin.jsp"); 
    	} 
    %>
  	<%
	Connection connection = JdbcConnection.getConnection(); 
	%>
    <h1>List of students</h1>
	<table border="1">
		<tr>
			<td>REGID</td>
			<td>FULLNAME</td>
			<td>PHONE</td>
			<td>EMAIL</td>
			<td>PASSWORD</td>
		</tr>
		<%
		PreparedStatement ps1 = connection.prepareStatement("SELECT * FROM STUDENT");
		ResultSet resultSet = ps1.executeQuery();
		while(resultSet.next()){
		%>
		<tr>
			<td><%=resultSet.getString("REGID") %></td>
			<td><%=resultSet.getString("FULLNAME") %></td>
			<td><%=resultSet.getString("PHONE") %></td>
			<td><%=resultSet.getString("EMAIL") %></td>
			<td><%=resultSet.getString("PASSWORD") %></td>
		</tr>
		<%
		}
		JdbcConnection.closeConnection();
		%>
	</table>
	<br>
	<form action="adminHome.jsp">
		<button type="submit">HOME</button>
	</form>
  </body>
</html>

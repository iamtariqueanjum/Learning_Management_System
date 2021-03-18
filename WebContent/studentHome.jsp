<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="com.jdbc.JdbcConnection"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Home-LMS</title>
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
    />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  </head>
  <body>
    <% if(session.getAttribute("email")==null) {
    response.sendRedirect("studentLogin.jsp"); } %>
    <nav class="navbar navbar-inverse">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href="studentHome.jsp">LMS</a>
        </div>
        <ul class="nav navbar-nav">
          <li class="active"><a href="studentHome.jsp">Home</a></li>
          <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#"
              >COURSE <span class="caret"></span
            ></a>
            <ul class="dropdown-menu">
              <li><a href="#">ATTEND A TEST</a></li>
              <li><a href="#">VIEW RESULTS</a></li>
            </ul>
          </li>
        </ul>
        <form class="navbar-form navbar-right" action="studentLogout" method="post">
          <button type="submit" class="btn btn-default">Logout</button>
        </form>
      </div>
    </nav>
    <%
	Connection connection = JdbcConnection.getConnection(); 
	%>
	<%
	String sessionemail = session.getAttribute("email").toString();
	PreparedStatement ps = connection.prepareStatement("SELECT * FROM STUDENT WHERE EMAIL=?");
    ps.setString(1, sessionemail);
    ResultSet rs = ps.executeQuery();
    while(rs.next()){
	%>	
    <h1>Welcome <%=rs.getString("FULLNAME")%></h1>
    <% } %>
    <h1>Courses Enrolled</h1>
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
		<div class="container">
		  <div class="row">
		    <div class="col-sm">
		      One of three columns
		    </div>
		    <div class="col-sm">
		      One of three columns
		    </div>
		    <div class="col-sm">
		      One of three columns
		    </div>
		  </div>
		</div>
		<div class="card" style="width: 18rem;">
		  <div class="card-body">
		    <h5 class="card-title">Card title</h5>
		    <h6 class="card-subtitle mb-2 text-muted">Card subtitle</h6>
		    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
		    <a href="#" class="card-link">Card link</a>
		    <a href="#" class="card-link">Another link</a>
		  </div>
		</div>
  </body>
</html>

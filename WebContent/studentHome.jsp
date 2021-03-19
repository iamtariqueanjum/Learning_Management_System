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
        <ul class="nav navbar-nav">
          <li class="active"><a href="studentHome.jsp">Home</a></li>
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
	String sessionemail = (String)session.getAttribute("email");
	String sessionid = (String)session.getAttribute("regid");
	PreparedStatement ps = connection.prepareStatement("SELECT * FROM STUDENT WHERE EMAIL=?");
    ps.setString(1, sessionemail);
    ResultSet rs = ps.executeQuery();
    while(rs.next()){
    %>	
    <h1>Welcome <%=rs.getString("FULLNAME")%> <%=rs.getString("REGID")%></h1>
    <% } %>
    <h1>Dashboard</h1>
	<%
	PreparedStatement ps1 = connection.prepareStatement("SELECT C.* FROM COURSE C INNER JOIN STUDENTCOURSES SC ON C.COURSEID=SC.COURSEID WHERE SC.REGID=?");
	ps1.setString(1,sessionid);	
	ResultSet resultSetCourses = ps1.executeQuery();
	while(resultSetCourses.next()){
	%>
	<div class="container">
	  <div class="row">
	    <div class="col-sm">
	      <a href="studentCourseHome.jsp"><%=resultSetCourses.getString("COURSENAME")%></a>
	      <p><%=resultSetCourses.getString("COURSEID")%></p>
	      <p>YEAR:<%=resultSetCourses.getString("YR")%></p>
	      <p>SEM:<%=resultSetCourses.getString("SEM")%></p>
	    </div>
	  </div>
	</div>
	<% } %>
	<%
		JdbcConnection.closeConnection();
	%>
  </body>
</html>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="com.jdbc.JdbcConnection"%>
<%@page import="java.sql.*"%>

<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>ADMIN HOME</title>
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
    />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  </head>
  <body>
    <% if(session.getAttribute("adminusername")==null){
    response.sendRedirect("adminLogin.jsp"); } %>
    <nav class="navbar navbar-inverse">
      <div class="container-fluid">
        <div class="navbar-header">
          <a class="navbar-brand" href="adminHome.jsp">LMS</a>
        </div>
        <ul class="nav navbar-nav">
          <li class="active"><a href="adminHome.jsp">Home</a></li>
          <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#"
              >STUDENT <span class="caret"></span
            ></a>
            <ul class="dropdown-menu">
              <li><a href="studentSignup.jsp">ADD A STUDENT</a></li>
              <li><a href="studentDelete.jsp">DELETE A STUDENT</a></li>
              <li><a href="viewStudents.jsp">VIEW STUDENTS</a></li>
            </ul>
          </li>
          <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#"
              >FACULTY <span class="caret"></span
            ></a>
            <ul class="dropdown-menu">
              <li><a href="facultySignup.jsp">ADD A FACULTY</a></li>
              <li><a href="facultyDelete.jsp">DELETE A FACULTY</a></li>
              <li><a href="viewFaculties.jsp">VIEW FACULTIES</a></li>
            </ul>
          </li>
        </ul>
        <form
          class="navbar-form navbar-right"
          action="adminLogout"
          method="post"
        >
          <button type="submit" class="btn btn-default">Logout</button>
        </form>
      </div>
    </nav>
    <%
	Connection connection = JdbcConnection.getConnection(); 
	%><%
	String sessionemail = session.getAttribute("adminusername").toString();
	PreparedStatement ps = connection.prepareStatement("SELECT * FROM ADMINCRED WHERE ADMINUSERNAME=?");
    ps.setString(1, sessionemail);
    ResultSet rs = ps.executeQuery();
    while(rs.next()){
	%>	
    <h1>Welcome <%=rs.getString("ADMINUSERNAME")%></h1>
    <% } %>
  </body>
</html>

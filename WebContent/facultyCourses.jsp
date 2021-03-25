<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.jdbc.JdbcConnection"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>FACULTY COURSES</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet" type="text/css" href="Semantic-UI-CSS-master/components/dropdown.min.css">
	<script src="Semantic-UI-CSS-master/components/dropdown.min.js"></script>
  </head>
  <body>
    <% if(session.getAttribute("adminusername")==null){
    response.sendRedirect("adminLogin.jsp"); } %>
    <nav class="navbar navbar-inverse">
      <div class="container-fluid">
        <ul class="nav navbar-nav">
          <li class="active"><a href="adminHome.jsp">Home</a></li>
          <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">STUDENT <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="studentSignup.jsp">ADD A STUDENT</a></li>
              <li><a href="studentDelete.jsp">DELETE A STUDENT</a></li>
              <li><a href="viewStudents.jsp">VIEW STUDENTS</a></li>
            </ul>
          </li>
          <li class="dropdown">
            <a class="dropdown-toggle" data-toggle="dropdown" href="#">FACULTY <span class="caret"></span></a>
            <ul class="dropdown-menu">
              <li><a href="facultySignup.jsp">ADD A FACULTY</a></li>
              <li><a href="facultyDelete.jsp">DELETE A FACULTY</a></li>
              <li><a href="viewFaculties.jsp">VIEW FACULTIES</a></li>
              <li><a href="facultyCourses.jsp">FACULTY COURSE</a></li>
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
    <%Connection connection = JdbcConnection.getConnection();%>
    <form align="center" action="facultyCourses.jsp" method="post">
    	<select class="ui dropdown" name="opt">
		  <option value="">Select Faculty</option>
    <%PreparedStatement ps = connection.prepareStatement("SELECT * FROM FACULTY");
    ResultSet rs = ps.executeQuery();
    while(rs.next()){%>
		  <option value="<%=rs.getString(1) %>"><%=rs.getString(1)%> <%=rs.getString(2) %></option>
    <%} %>
    	</select> <button type="submit">SEARCH</button>
    	 <table class="table table-bordered table-condensed table-hover table-striped text-center">
		    <tr>
		    	<td>FACULTYID</td>
		    	<td>COURSEID</td>
		    </tr>
		    <%
		    String id=request.getParameter("opt");
		    PreparedStatement ps1 = connection.prepareStatement("SELECT * FROM FACULTYCOURSES WHERE FACULTYID=?");
		    ps1.setString(1,id);
		    ResultSet rs1 = ps1.executeQuery();
		    while(rs1.next()){%>
		    <tr>
		    	<td><%=rs1.getString(1)%></td>
		    	<td><%=rs1.getString(2)%></td>
		    </tr>
		    <% }%>
    	</table>
    </form>
    <form action="facultyCourses" method="post" align="center">
    <h1>UNIVERSITY COURSES</h1>
    <table class="table table-bordered table-condensed table-hover table-striped text-center">
    <tr>
    	<td><input type="checkbox" id="select_all"/></td>
    	<td>COURSE ID</td>
    	<td>COURSE NAME</td>
    	<td>COURSE YEAR</td>
    	<td>COURSE SEMESTER</td>
    </tr>
    <script type="text/javascript">
    $(document).ready(function(){
    	$('#select_all').on('click',function(){
    		if(this.checked){
		            $('.checkbox').each(function(){
		                this.checked = true;
		            });
		        }else{
		             $('.checkbox').each(function(){
		                this.checked = false;
		            });
		        }
		    });
		    
		    $('.checkbox').on('click',function(){
		        if($('.checkbox:checked').length == $('.checkbox').length){
		            $('#select_all').prop('checked',true);
		        }else{
		            $('#select_all').prop('checked',false);
		        }
		    });
		});
	</script>
    <%
	PreparedStatement ps2 = connection.prepareStatement("SELECT * FROM COURSE");
    ResultSet rs2 = ps2.executeQuery();
    while(rs2.next()){%>
    <tr>
    	<td><input type="checkbox" name="checkbox" class="checkbox" value="<%=rs2.getString(1)%>"></td>
    	<td><%=rs2.getString(1) %></td>
    	<td><%=rs2.getString(2) %></td>
    	<td><%=rs2.getString(3) %></td>
    	<td><%=rs2.getString(4) %></td>
    </tr>
    <%}%>
    </table>
    <button type="submit">ADD COURSE TO FACLUTY</button>
    </form>
</body>
</html>
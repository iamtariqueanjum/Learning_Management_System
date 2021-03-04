<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Welcome to LMS PORTAL</title>
    <link rel="stylesheet" href="styles.css" />
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
    />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  </head>
  <body>
  <%
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
		
    <marquee behavior="scroll" direction="left" style="font-size: 200%">
      WELCOME TO LEARNING MANAGEMENT SYSTEM. YOU CAN ACCESS YOUR ACCOUNT
      HERE.</marquee
    >

    <div class="sign-up-form">
      <form action="facultyLogin.jsp">
        <label>SELECT IF YOU ARE A FACULTY</label>
        <button type="submit">FACULTY PORTAL</button>
      </form>
      <hr />
      <form action="studentLogin.jsp">
        <label>SELECT IF YOU ARE A STUDENT</label>
        <button type="submit">STUDENT PORTAL</button>
      </form>
      <hr />
      <form action="adminLogin.jsp">
        <label>SELECT IF YOU ARE A ADMIN</label>
        <button type="submit">ADMIN PORTAL</button>
      </form>
    </div>
    <footer>
      <p>
        For any queries,Contact us<br />
        <a href="mailto:p6@example.com">p6@example.com</a>
      </p>
    </footer>
  </body>
</html>

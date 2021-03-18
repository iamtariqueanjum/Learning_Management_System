<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>FACULTY SIGN UP - LMS</title>
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
  	if(session.getAttribute("adminusername")==null){
  		response.setContentType("text/html");
    	out.println("<script type=\"text/javascript\">");
    	out.println("alert('Admin Access Only!!!');");
    	out.println("location='adminLogin.jsp';");
    	out.println("</script>");
    	RequestDispatcher rs = request.getRequestDispatcher("adminLogin.jsp");
    	rs.include(request, response);
  	}
  %>
		<div class="sign-up-form">
	      <form name="signForm" action="facultySignup" method="post">
	      	<label>FACULTY SIGNUP</label><br>
	        <label for="facid">Faculty ID:</label>
	        <input
	          type="text"
	          id="facid"
	          name="facid"
	          class="input-box"
	          pattern="[0-9]{4}"
	          title="Faculty Id should be 4 digits"
	          placeholder="Enter your Faculty ID"
	          required
	          autofocus
	        />
	
	        <label for="facname">Full name:</label>
	        <input
	          type="text"
	          id="facname"
	          name="facname"
	          class="input-box"
	          placeholder="Enter your full name"
	          required
	        />
	
	        <label for="facphone">Phone number: </label>
	        <input
	          type="text"
	          class="input-box"
	          name="facphone"
	          pattern="[0-9]{10}"
	          title="mobile number should be 10 digits"
	          placeholder="Enter your phone number"
	          required
	        />
	
	        <label for="facemail">Office Email: </label>
	        <input
	          type="email"
	          class="input-box"
	          name="facemail"
	          pattern = "[a-z0-9._%+-]+@kluniversity.in"
	          title="Enter your kluniversity.in email address"
	          placeholder="Enter your email"
	          required
	        />
	
	        <label for="facpassword">Password: </label>
	        <input
	          type="password"
	          name="facpassword"
	          class="input-box"
	          pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
	          title="Password must contain at least
	          one number, 
	          one uppercase and lowercase letter,
	          at least 8 or more characters."
	          placeholder="Enter your password"
	          required
	        />
	        <button type="submit">SIGN UP</button>
	      </form>
	      <br>
	      <form action="adminHome.jsp">
	        <button type="submit">HOME</button>
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
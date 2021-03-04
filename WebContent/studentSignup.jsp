<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>STUDENT SIGN UP - LMS</title>
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
      <form name="signForm" action="studentSignup" method="post">
      	<label>STUDENT SIGNUP</label><br>
      	<label for="regid">REG ID:</label>
        <input
          type="text"
          id="regid"
          name="regid"
          class="input-box"
          placeholder="Enter your ID number"
          pattern="[0-9]{9}"
          title="ID number should be 9 digits"
          required
          autofocus
        />
        <label for="fullname">Full name:</label>
        <input
          type="text"
          id="fullname"
          name="fullname"
          class="input-box"
          placeholder="Enter your Full name"
          required
          autofocus
        />

        <label for="phone">Phone number: </label>
        <input
          type="text"
          class="input-box"
          name="phone"
          pattern="[0-9]{10}"
          title="mobile number should be 10 digits"
          placeholder="Enter your phone number"
          required
        />

        <label for="email">Email: </label>
        <input
          type="email"
          class="input-box"
          name="email"
          pattern = "[a-z0-9._%+-]+@kluniversity.in"
          title="Enter your kluniversity.in email address"
          placeholder="Enter your email"
          required
        />

        <label for="password">Password: </label>
        <input
          type="password"
          name="password"
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
      <form action="studentLogin.jsp">
        <button type="submit">LOGIN</button>
      </form>
      <br>
      <form action="index.jsp">
		<button type="submit">SELECT PORTAL</button>
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

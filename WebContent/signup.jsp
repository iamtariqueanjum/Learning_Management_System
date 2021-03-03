<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>STUDENT SIGN UP - LMS</title>
    <link rel="stylesheet" href="login.css" />
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
    />
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
      <form name="signForm" action="signup" method="post">
      	<label>STUDENT SIGNUP</label><br>
        <label for="fname">First name:</label>
        <input
          type="text"
          id="fname"
          name="fname"
          class="input-box"
          placeholder="Enter your First name"
          required
          autofocus
        />

        <label for="lname">Last name (optional):</label>
        <input
          type="text"
          id="lname"
          name="lname"
          class="input-box"
          placeholder="Enter your Last name"
        />

        <label for="phno">Phone number: </label>
        <input
          type="text"
          class="input-box"
          name="phno"
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
      <form action="login.jsp">
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

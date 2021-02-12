<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>ADMIN LOGIN - LMS</title>
		<link rel="stylesheet" href="login.css" />
	    <link
	      rel="stylesheet"
	      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	    />
	</head>
	<body>
	  <div class="sign-up-form">
      <form name="loginForm" action="adminLogin" method="post">
        <label>ADMIN LOGIN</label><br>
        <label for="adminUsername">Enter admin username : </label>
        <input
          name="adminUsername"
          type="text"
          class="input-box"
          placeholder="Enter admin username"
          required
        />
        <label for="adminPass">Enter admin password: </label>
        <input
          name="adminPass"
          type="password"
          class="input-box"
          pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
          title="Password must contain at least
          -one  number 
          -one uppercase and lowercase letter
          -at least 8 or more characters."
          placeholder="Enter admin password"
          required
        />
        <button type="submit">ADMIN LOGIN</button>
        <hr />
      </form>
      </div>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>LOGIN-LMS</title>
	<link rel="stylesheet" href="login.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	<h1 align=center>Learning Management System</h1>
    <div class="sign-up-form">
    	<h2> Login here.</h2>
    	<form name="loginForm" action="home.jsp" method="post">
	    	<label for="email">Email: </label>
	    	<input name="email" type="email" class="input-box" placeholder="Enter your email" required>
	    	<label for="password">Password: </label>
	    	<input name="password" type="password" class="input-box" placeholder="Enter your password" required>
	    	<button type="submit">LOGIN</button>
	    	<hr>
	    	<a href="#">Forget your password?click here</a>
			<p>Don't have an Account?</p>
	    	<a href="signup.jsp">SIGN UP HERE</a>
    	</form>
    </div>
	<footer>
		<p>Project 6<br>
			<a href="mailto:p6@example.com">p6@example.com</a>
		</p>
	</footer>
</body>
</html>
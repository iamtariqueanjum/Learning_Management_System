<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<title>LMS SIGN UP</title>
	<link rel="stylesheet" href="signup.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
	 <h1 align=center>Learning Management System</h1>
          <div class="sign-up-form">
               <h3>Create your account</h3>
               <form>
                    <label for="fname">First name:</label>
                    <input type="text" id="fname" name="fname" class="input-box" placeholder="Enter your First name" required>
                    
                    <label for="lname">Last name:</label>
                    <input type="text" id="lname" name="lname" class="input-box" placeholder="Enter your Last name" required>
                    
                    <label for="phno">Phone number: </label>
                    <input type="text" class="input-box" name="phno" pattern="[0-9]{10}" placeholder="Enter your phone number" required>
                    
                    <label for="email">Email: </label>
                    <input type="email" class="input-box" name="email" placeholder="Enter your email" required>
                    
                    <label for="password">Password: </label>
                    <input type="password" class="input-box" name="password" placeholder="Enter your password" required>
                    
                    <label for="repeatPassword">Enter the password again: </label>
                    <input type="password" class="input-box" name="repeatPassword" placeholder="Enter password again" required>
                    
                    <label>Select your gender:</label>
                    
                    <label for="male">Male</label>
                    <input type="radio" id="male" name="male" value="male">
                    <label for="female">Female</label><br>
                    <input type="radio" id="female" name="female" value="female">
                    
                    
                    <label for="year">Choose your year:</label>
                         <select id="year" name="year">
	                         <option value="year1">1st Year</option>
	                         <option value="year2">2nd Year</option>
	                         <option value="year3">3rd Year</option>
	                         <option value="year4">4th Year</option>
	                     </select>
                    <br>
                    <span><input type="checkbox"></span>I agree to terms and conditions of services
                    <button type="submit">SIGN UP</button>
                    <hr>
                    <p>Do you already have an account?</p>
                    <a href="login.jsp">LOGIN HERE</a>
               </form>
          </div>   
		<footer>
			<p>Project 6<br>
			<a href="mailto:p6@example.com">p6@example.com</a></p>
		</footer>
 </body>
</html>
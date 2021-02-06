<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Welcome To LMS</title>
	<style>
    h1 {
      margin: auto;
      width: 100%;
      padding: 10px;
      font-family: "Poppins", sans-serif;
      color: Black;
      border: 1px skyblue;
      background-color: orange;
    }
    body {
      background-image: url("backgroundimg.jpg");
      background-repeat: no-repeat;
      background-size: cover;
    }
    footer {
      position: fixed;
      left: 0;
      bottom: 0;
      width: 100%;
      background-color: orange;
      color: white;
      text-align: center;
    }
    .centerDiv {
      width: 325px;
      height: 150px;
      position: absolute;
      top: 0;
      bottom: 0;
      left: 0;
      right: 0;
      margin: auto;
      padding: 15px;
      background-color: orange;
    }
  </style>
  <link
    rel="stylesheet"
    href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
  />
  <script src="https://kit.fontawesome.com/a076d05399.js"></script>
</head>
	<body>
	    <h1 align="center">Learning Management System</h1>
	    <marquee behavior="scroll" direction="left" style="font-size: 200%">
	    Welcome to Learning Management System.You can Login to your account or create an account here.</marquee>

    <div class="centerDiv">
      <form>
        <table>
          <i class="fas fa-chalkboard-teacher" style="font-size: 108px; color: Black"></i>
          <a href="login.jsp" class="btn btn-info" role="button">Login</a>
          <a href="signup.jsp" class="btn btn-info" role="button">Signup</a>
        </table>
      </form>
    </div>
    <footer>
      <p>
        Project 6<br />
        <a href="mailto:p6@example.com">p6@example.com</a>
      </p>
    </footer>
  </body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>LOGIN-LMS</title>
    <link rel="stylesheet" href="login.css" />
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
    />
  </head>
  <body>
    <marquee behavior="scroll" direction="left" style="font-size: 200%">
      WELCOME TO LEARNING MANAGEMENT SYSTEM.YOU CAN LOGIN TO YOUR ACCOUNT
      HERE.</marquee
    >

    <div class="sign-up-form">
      <form name="loginForm" action="login" method="post">
        <label for="email">Email: </label>
        <input
          name="email"
          type="email"
          class="input-box"
          pattern = "[a-z0-9._%+-]+@kluniversity.in"
          title="Enter your kluniversity.in email address"
          placeholder="Enter your email"
          required
        />
        <label for="password">Password: </label>
        <input
          name="password"
          type="password"
          class="input-box"
          pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"
          title="Password must contain at least
          -one  number 
          -one uppercase and lowercase letter
          -at least 8 or more characters."
          placeholder="Enter your password"
          required
        />
        <button type="submit">LOGIN</button>
        <hr />
      </form>
      <a href="forgotpass.jsp">Forgot your password?</a>
      <p>Are you a new user?</p>
      <form action="signup.jsp" method="get">
        <button type="submit">SIGN UP</button>
      </form>
    </div>
    <footer>
      <p>
        Contact us<br />
        <a href="mailto:p6@example.com">p6@example.com</a>
      </p>
    </footer>
  </body>
</html>

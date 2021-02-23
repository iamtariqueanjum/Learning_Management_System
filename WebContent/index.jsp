<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <title>Welcome to LMS PORTAL</title>
    <link rel="stylesheet" href="login.css" />
    <link
      rel="stylesheet"
      href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
    />
  </head>
  <body>
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
      <form action="login.jsp">
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

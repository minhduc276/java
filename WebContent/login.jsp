<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
	<title>Login</title>
</head>
<body>
	<% String mess = request.getParameter("kt"); %>
	<%if(mess == null){ %>
		<form action="kq.jsp" method="POST">
		  <label for="loginID">Username:</label>
		  <input type="text" id="loginID" name="loginID" placeholder="Mã sinh viên"><br>
		  <label for="password">Password:</label>
		  <input type="password" id="password" name="password" placeholder="Password"><br>
		  <button type="submit" name="btnLogin" class="btn btn-primary" value="Login">Login</button>
		</form>
	<%}else { %>
		<h1>Xin chào</h1> 
	<%} %>
</body>
</html>
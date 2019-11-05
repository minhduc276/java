<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Dang nhap</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-inverse">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <a class="navbar-brand" href="#">WebSiteName</a>
	    </div>
	    <ul class="nav navbar-nav">
	      <li class="active"><a href="home.jsp">Home</a></li>
	      <li><a href="T1.jsp">Page 1</a></li>
	      <li><a href="T2.jsp">Page 2</a></li>
	    </ul>
	    <ul class="nav navbar-nav navbar-right">
	      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Signup</a></li>
	    </ul>
	  </div>
	</nav>
	<div class="container">
		<form action="dangnhapcontroller" method="POST">
			  <label for="loginID">Username:</label>
			  <input type="text" id="loginID" name="txtun" placeholder="Mã sinh viên" class="form-control"><br>
			  <label for="password">Password:</label>
			  <input type="password" id="password" name="txtpass" placeholder="Password" class="form-control"><br>
			  <button type="submit" name="btn1" class="btn btn-primary" value="Login">Login</button>
		</form>
		<a href="dangnhapcontroller?kt=1"> test gửi dữ liệu</a>
	</div>
</body>
</html>
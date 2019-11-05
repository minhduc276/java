<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-blue">
	  <a class="navbar-brand" href="#">Logo</a>
	  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	    <span class="navbar-toggler-icon"></span>
	  </button>
	
	  <div class="collapse navbar-collapse" id="navbarSupportedContent">
	    <ul class="navbar-nav mr-auto">
	      <li class="nav-item active">
	        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">Doc bao</a>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link" href="#">Download</a>
	      </li>
	      <li class="nav-item dropdown">
	        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	          Dropdown
	        </a>
	        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
	          <a class="dropdown-item" href="#">Action</a>
	          <a class="dropdown-item" href="#">Another action</a>
	          <div class="dropdown-divider"></div>
	          <a class="dropdown-item" href="#">Something else here</a>
	        </div>
	      </li>
	      <li class="nav-item">
	        <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
	      </li>
	    </ul>
	    <form class="form-inline my-2 my-lg-0">
	      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
	      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
	    </form>
	  </div>
	</nav>
	<br>
	<form action="https://ums-husc.hueuni.edu.vn/Student/News" method="POST">
	  <label for="loginID">Username:</label>
	  <input type="text" id="loginID" name="loginID" placeholder="Mã sinh viên">
	  <label for="password">Password:</label>
	  <input type="password" id="password" name="password" placeholder="Password">
	  <button type="submit" name="btnLogin" class="btn btn-primary" value="Login">Login</button>
	</form>
	<br>
	<table border="1" align="center" width="1000">
		<tr>
			<td colspan="3" bgcolor="green">Menu trên</td>
		</tr>
		<tr>
			<td width="200" valign="top" bgcolor="yellow">
				<a href="tc.jsp">Home</a><br>
				<a href="http://docbao.vn">Doc bao</a><br>
				<a href="a.docx">Download</a><br>
			</td>
			<td width="600" valign="top" >Nội dung
				<form action="haha.jsp" method="POST">
				Username: <input type="text" name="txta" value="" placeholder="Nhap vao">
				</form>
			 <%for(int i=1; i<=100; i++){ %>
				<%if(i%2 == 0) { %>
					<marquee direction="left">
						<img src="logo.png" width="300">
					</marquee>
				<%} else {%>
					<marquee direction="right">
						<img src="logo.png" width="300">
					</marquee>
				
			<%}} %>
			</td>
			<td width="200" valign="top" bgcolor="red">Tìm kiếm</td>
		</tr>
		<tr>
			<td colspan="3" align="center">Bản quyền</td>
		</tr>
	</table>
	<!--  <form> <input> <select> <textarea> -->
	<!-- Xay dung bang cuu chuong, Random xo so kien thiet -->
</body>
</html>
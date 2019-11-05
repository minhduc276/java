<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Trang 2</title>
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
	    <%if(session.getAttribute("un") == null){
			response.sendRedirect("dangnhap.jsp");
		}else{%>
	      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span>
	       <%= session.getAttribute("un")%></a></li>
	      <%} %>
	    </ul>
	  </div>
	</nav>

	<h1>Trang 2</h1>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>May Tinh</title>
</head>
<body>
	<%String aa = (String)request.getAttribute("aa");%>
	<%String bb = (String)request.getAttribute("bb");%>
	<%long kq = (long) request.getAttribute("kq");%>
	
	<form method="post" action="maytinhcuhuoiServlet">
		a= <input type="number" name="txta" value=""><br>
		b= <input type="number" name="txtb" value=""><br>
		kq= <input type="number" name="txtkq" value="<%=kq %>"><br>
		<input type = "submit" name="but1" value="+">
		<input type = "submit" name="but1" value="-">
		<input type = "submit" name="but1" value="*">
		<input type = "submit" name="but1" value="/">
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<% 
		int n = Integer.parseInt(request.getParameter("txtn"));
		//Kiem tra da tao session chua?
		if(session.getAttribute("ss") == null)
			session.setAttribute("ss", 0);
		//b1: Gan session cho bien
		int s =(int)session.getAttribute("ss");
		//b2: thay doi bien
		s = s + n;
		//b3: Luu bien lai vao session
		session.setAttribute("ss", s);
		out.print("Tong: " + session.getAttribute("ss"));
	%>
</body>
</html>
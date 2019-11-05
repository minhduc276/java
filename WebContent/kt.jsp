<%@page import="javafx.scene.control.Alert"%>
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
		String un = request.getParameter("txtun");
		String pass = request.getParameter("txtpass");
		if(!un.isEmpty() && !pass.isEmpty()){
			session.setAttribute("un", un);
			response.sendRedirect("home.jsp");
		}
		else{
			out.print("<script>alert('Sai!!!')</script>");
			response.sendRedirect("dangnhap.jsp");	
		}	
	%>
</body>
</html>
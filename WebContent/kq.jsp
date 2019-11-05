<%@page import="java.util.Enumeration"%>
<%@page import="com.sun.jmx.snmp.Enumerated"%>
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
		String username = request.getParameter("loginID");
		String pass = request.getParameter("password");
		
		if(username.equals("abc") && pass.equals("123")){
			response.sendRedirect("home.jsp");
		} else {
			response.sendRedirect("dangnhap.jsp");
		}
	%>
</body>
</html>
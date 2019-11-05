<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div>
	<%Calendar c = Calendar.getInstance();%>
	Hom nay, ngay <%= c.get(Calendar.DAY_OF_MONTH)%> thang <%= c.get(Calendar.MONTH)+1%> nam <%= c.get(Calendar.YEAR)%>
	</div> <hr>
	Chon ngay:
	<select name="sngay">
		<%for(int i=1; i<=31; i++) {%>
			<%if(i== c.get(Calendar.DAY_OF_MONTH)){ %>
				<option selected="selected"><%=i %></option>
			<%}else { %>
				<option><%=i %></option>
			<%} %>
		<%} %>
	</select>
	&nbsp;&nbsp;&nbsp;Chon thang:
	<select name="sthang">
		<%for(int i=1; i<=12; i++) {%>
			<%if(i== c.get(Calendar.MONTH)){ %>
				<option selected="selected"><%=i %></option>
			<%}else { %>
				<option><%=i %></option>
			<%} %>
		<%} %>
	</select>
	&nbsp;&nbsp;&nbsp;Chon nam:
	<select name="snam">
		<%
			 int year = c.get(Calendar.YEAR);
		%>
		<%for(int i=year-10; i<=year; i++) {%>
		<option selected="selected"><%=i %></option>
		<%} %>
	</select>
</body>
</html>
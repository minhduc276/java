<%@page import="java.text.DecimalFormat"%>
<%@page import="bo.gioHangBo"%>
<%@page import="bean.giohangbean"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<title>Giỏ hàng</title>
</head>
<body>
<div class="container">
	<nav class="navbar navbar-inverse">
	  <div class="container-fluid">
	    <div class="navbar-header">
	      <a class="navbar-brand" href="#">WebSiteName</a>
	    </div>
	    <ul class="nav navbar-nav">
	      <li class="active"><a href="home.jsp">Home</a></li>
	      <li><a href="T1.jsp">Page 1</a></li>
	      <%long sl=0;
	      	gioHangBo ktgh = (gioHangBo)session.getAttribute("gh"); 
	      		
	      	if(ktgh != null){
	      		sl = ktgh.ds.size();
	      	}
	      %>
	      <li><a href="htgio.jsp">Giỏ hàng(<%= sl%>)</a></li>
	    </ul>
	    <ul class="nav navbar-nav navbar-right">
	    	<% if(session.getAttribute("un") == null){ %>
	    	<li><a href="dangnhap.jsp"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
	 		<%}else{ %>
	   		<li><a href="dangnhap.jsp"><span class="glyphicon glyphicon-log-in"></span> 
	     	<%= session.getAttribute("un")%></a></li>
	 		
	    </ul>
	  </div>
	</nav>
		<%
			if(session.getAttribute("gh") != null){
				gioHangBo gh =(gioHangBo) session.getAttribute("gh");
		%>		
			<h1 align="center" style="color: blue">GIỎ HÀNG</h1>
			
				<table width="1000" align="center" cellpadding="0" cellspacing="0" border="1" class="table table-hover">
					<tr>
						<th>
							<input type="submit" value="Xóa" style="color: red">
						</th>
						<th>Mã sách</th>
						<th>Tên sách</th>
						<th>Tác giả</th>
						<th>Đơn giá</th>
						<th>Số lượng</th>
						<th>Thành tiền</th>
						<th>Tùy chọn</th>
					</tr>
					<% for(giohangbean g: gh.ds){ %>
					<tr align="center">
						<td>
							<form action="mua.jsp">
								<input type="checkbox" value="<%= g.getMasach()%>" name="ms">
							</form>
						    
						  
						</td>
						<td><%=g.getMasach()%> </td>
						<td><%=g.getTensach()%> </td>
						<td><%=g.getTacgia()%> </td>
						<td><%=g.getGia() %> </td>
						<td>
							<form action="mua.jsp" method="post">
								<input type="hidden" value="<%= g.getMasach()%>" name="ms">
								<input type="hidden" value="<%= g.getGia()%>" name="gia">
								<input type="number" min="1" max="100" value="<%=g.getSoluong()%>" name="soluong">
								<input type="hidden" value="2" name="kt">
								<input type="submit" value="Cập nhật" class="btn-link">
							</form>
						</td>
						<td><%=g.getThanhtien() %> </td>
						<td>
							<form action="mua.jsp" method="post">
								<input type="hidden" value="<%= g.getMasach()%>" name="ms">
								<input type="hidden" value="<%= g.getGia()%>" name="gia">
								<input type="hidden" value="<%=g.getSoluong()%>" name="soluong">
								<input type="hidden" value="3" name="kt">
								<input type="submit" value="Xóa" class="btn-link">
							</form>
						</td>
					</tr>
					<%} %>
				</table>
			
				<br><br>
				<%DecimalFormat dd = new DecimalFormat("###,###");%>
				<div align="center"><h3>Tổng tiền: <%= dd.format(gh.Tong()) %></h3></div>
				<%if(gh.Tong() == 0){ %>
					<%response.sendRedirect("home.jsp"); %>
				<%} %>
		<% }else{%>
			<h1 style="text-align: center;">Giỏ hàng trống</h1>
		<%} %>
	<%} %>
</div>
</body>
</html>
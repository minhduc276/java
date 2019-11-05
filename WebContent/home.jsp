<%@page import="bean.loaibean"%>
<%@page import="bo.gioHangBo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.sachbean"%>
<%@page import="bo.sachbo"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Trang chủ</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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
	      	gioHangBo gh = (gioHangBo)session.getAttribute("gh"); 
	      		
	      	if(gh != null){
	      		sl = gh.ds.size();
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
	 		<%} %>
	    </ul>
	  </div>
	</nav>
	
	<table withd="1000" align="center">
		<tr>
			<td valign="top" width="200">
				<%ArrayList<loaibean> dsloai = (ArrayList<loaibean>) request.getAttribute("dsloai"); %>
				<table withd="200" class="table table-hover table-boder">
					<%for(loaibean k: dsloai){ %>
					<tr>
						<td>
						<a href="sachcontroller?ml=<%=k.getMaloai()%>">
						<%= k.getTenloai() %>
						</a>
						</td>
					</tr>
					<%} %>
				</table>
			</td>
			<td valign="top" withd="600">
				<table width="600" algin="center">
				<%
				String ml = request.getParameter("ml");
				ArrayList<sachbean> ds = (ArrayList<sachbean>) request.getAttribute("dssach");
				int ss = ds.size();
					for(int i=0; i<ss; i++){
						sachbean s = ds.get(i);
						if(s.getMaloai().equals(ml)){
				%>
						<tr>
							<td>
							<img style="height: 200px; width: 200px" alt="" src="<%= s.getImage()%>"><br>
							<%= s.getTensach() %><br>
							<%= s.getTacgia() %><br>
							<%= s.getGia() %><br>
							<a href="mua.jsp?ms=<%= s.getMasach()%>&ts=<%= s.getTensach()%>&tg=<%= s.getTacgia()%>&gia=<%= s.getGia()%>&kt=1"> 
								<img src="buynow.jpg"> 
							</a><hr>
							</td>
							<%i++; if(i<ss){s = ds.get(i);%>
							<td style="height: 200px">
							<img style="height: 200px; width: 200px" alt="" src="<%= s.getImage()%>"><br>
							<%= s.getTensach() %><br>
							<%= s.getTacgia() %><br>
							<%= s.getGia() %><br>
							<a href="mua.jsp?ms=<%= s.getMasach()%>&ts=<%= s.getTensach()%>&tg=<%= s.getTacgia()%>&gia=<%= s.getGia()%>&kt=1">
								<img src="buynow.jpg"> 
							</a><hr>
							</td>
						</tr>
					<%}}} %>
				</table>
			</td>
			
			<td>
			
			</td>
		
		</tr>
	</table>

</div>
</body>
</html>
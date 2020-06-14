<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>session.jsp</title>
</head>
<body>
	<center>
	<h2>session 예제</h2>
	<hr>
	<%
		if(session.isNew()){
			out.println("<script> alert('세션이 해제되어 다시 설정합니다.')</script>");
			session.setAttribute("login","홍길동");
		}
	%>
	<% session.setMaxInactiveInterval(5); %>
	# <%=session.getAttribute("login") %> 님 환영합니다. !! <br>
	1. 세션 ID : <%=session.getId() %><br>
	2. 세션 유지 시간 : <%=session.getMaxInactiveInterval() %><br>
	</center>
</body>
</html>
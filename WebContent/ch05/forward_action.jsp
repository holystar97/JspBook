<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>forward_action.jsp</title>
</head>
<body>
<h2>forward_action.jsp 에서 footer.jsp 호출</h2>
<hr>
forward_action.jsp의 모든 내용은 출력되지 않습니다.<br>
<%!
	int a=10;
%>
<jsp:forward page="footer.jsp">
	<jsp:param name="start" value="1"/>
	<jsp:param name="end" value="100"/>
</jsp:forward>
<br>
forward_action.jsp의 모든 내용은 출력되지 않습니다.<br>
</body>
</html>
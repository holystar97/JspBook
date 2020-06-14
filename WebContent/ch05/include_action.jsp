<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include_action.jsp</title>
</head>
<body>
	<h2>include_action.jsp에서 footer.jsp 호출</h2>
	<hr>
	include_action.jsp에서 호출한 메시지 입니다. <br>
	
	<jsp:include page="footer.jsp">
		<jsp:param name="start" value="1"/>
		<jsp:param name="end" value="100"/>
	</jsp:include><br>
	include_action.jsp에서 호출한 메시지 입니다. <br>
	
</body>
</html>
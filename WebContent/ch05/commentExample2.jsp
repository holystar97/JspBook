<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP와 HTML 주석 </title>
</head>
<body>
	<center><h2>주석</h2></center>
	HTML 소스 보기를 해보세요
	<!-- 
	<%
		out.println("이 내용은 JSP가 작동 되어서 나온 결과입니다.");
	%>
	 -->
	
	<%--
		이곳은 JSP 주석 부분에서 HTML입니다.
		<%
			out.println("JSP 주석 부분입니다.");
		%>
	 --%>

</body>
</html>
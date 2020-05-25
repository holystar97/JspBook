<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Comment Example1</h1>
<%
	String name="Korea";
%>

<!-- 주석 부분입니다. '소스보기'에서 보이지요 -->

<%--
	이 부분은 JSP페이지에서만 보이고 '소스보기'를 해도 보이지 앟ㄴ음
	브라우저에 보내지 않는 문장
 --%>

<!-- <%=name%> 주석에도 동적인 변수 사용 -->
<%=name /*표현식에 주석 부분 */ %> Fighting !!!



</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Escape 문자</title>
</head>
<body>
	<center><h2>Escape 문자</h2></center>
	<xmp>
	1. 템플릿 데이터에서 
	스크립트렛은 <\%와 %> 사이에 자바 코드를 기술한다.
	2. 스크립팅 요소에서
	2.1 식에서
	<%= "<%" %>
	<%= "%\\>" %>
	
	2.2 스크립트렛에서 
	<%
		String start="<%";
		String end="%\\>";
		out.println(start);
		out.println(end);
	%>
	</xmp>
</body>
</html>
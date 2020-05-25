
<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<%
	LinkedHashMap<String,Integer> fruit_buy=(LinkedHashMap<String,Integer>)session.getAttribute("fruit_buy");
	LinkedHashMap<String,Integer> fruit_price= (LinkedHashMap)application.getAttribute("fruit_price");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>checkOut.jsp</title>
</head>
<body>
<center>

<h2>계산</h2>
선택한 상품 목록
<hr>
<%
	int total=0;
	for(String fruit: fruit_buy.keySet()){
		int num=fruit_buy.get(fruit);
		out.println(fruit + ":" + num + "개"+ num * fruit_price.get(fruit) + "원" +"<br>");
		total+=num * fruit_price.get(fruit);
		
	}
	out.println("총 가격: " + total + "원" + "<br>");
%>
</center>
</body>
</html>
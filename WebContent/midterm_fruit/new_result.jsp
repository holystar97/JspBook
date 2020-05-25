<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
HashMap<String,LinkedHashMap<String,Integer>> list =(HashMap)session.getAttribute("list");
LinkedHashMap<String, Integer> fruit_buy = list.get(session.getAttribute("username"));
LinkedHashMap<String, Integer> fruit_price = (LinkedHashMap<String, Integer>) application.getAttribute("fruit_price");

if(list == null){
	out.println("선택한 상품이 없습니다!!!");
}
else{
	int total = 0;
	// 구매한 fruit_buy목록에서 keyset()을 가지고 와서 
	for (String fruit : fruit_buy.keySet()) {
		int num = fruit_buy.get(fruit);
		out.println(fruit + ": " + fruit_buy.get(fruit) + "개 " + num * fruit_price.get(fruit) + "원 " + "<br>");
		total += num * fruit_price.get(fruit);
	}
	out.println("총 가격: " + total + "원" + "<br>");
}
%>
</body>
</html>
<%@page import="java.util.LinkedHashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	//과일의 가격 정보를 담은 map을 가져옴
	LinkedHashMap<String, Integer> fruit_price = (LinkedHashMap<String, Integer>) application.getAttribute("fruit_price");
	
	//과일명, 과일 개수
	String product = request.getParameter("product");
	int num = Integer.parseInt(request.getParameter("num"));
	
	//과일 구매이력을 담는 map을 가져옴
	LinkedHashMap<String, Integer> fruit_buy = null;
	LinkedHashMap<String, Integer> s_fruit_buy = (LinkedHashMap<String, Integer>) session.getAttribute("fruit_buy");
	if(s_fruit_buy == null) {
		fruit_buy = new LinkedHashMap<String, Integer>();
		session.setAttribute("fruit_buy", fruit_buy);
	} else {
		fruit_buy = s_fruit_buy;
	}
	
	//구매 이력 추가
	//기존에 구매한 이력이 있으면..
	if(fruit_buy.containsKey(product)){
		int n = fruit_buy.get(product);
		fruit_buy.put(product, n + num);
	
	} else {
	//구매한 이력이 없는 경우
		fruit_buy.put(product, num);
	}
	session.setAttribute("fruit_buy", fruit_buy);
	
	
	
	
	
	
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>add.jsp</title>
</head>
<body>
	<script>
		alert("<%=product %>이 (가) <%=num%>개 추가되었습니다 !! ");
		history.go(-1);
	</script>
</body>
</html>
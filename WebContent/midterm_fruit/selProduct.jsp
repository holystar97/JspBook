<%@page import="java.util.LinkedHashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//사용자가 로그인함
	request.setCharacterEncoding("UTF-8");
	String username   = request.getParameter("username");
	session.setAttribute("username", username);

		// 전체 fruit 가격표 생성
		LinkedHashMap<String, Integer> fruit_price = new LinkedHashMap<String,Integer>();
		fruit_price.put("사과"   	,100);
		fruit_price.put("귤"    	,200);
		fruit_price.put("파인애플" ,300);
		fruit_price.put("자몽"   ,400);
		fruit_price.put("레몬"   ,500);
		application.setAttribute("fruit_price", fruit_price);

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>selProduct.jsp</title>
</head>
<body>
	<div align="center">
	<h2>상품 선택</h2>
	<hr><%=session.getAttribute("username") %>님 환영합니다!!!!
	<hr>
	<form name="form1" method="post" action="add.jsp">
		<select name="product">
			<option value="사과">사과 100원</option>
			<option value="귤">귤 200원 </option>
			<option value="파인애플">파인애플 300원</option>
			<option value="자몽">자몽 400원 </option>
			<option value="레몬">레몬500원 </option>
		</select>
		개수 : <input type="text" name="num">개 
		<input type="submit" value="추가"/>
	</form>
	<a href="checkOut.jsp">계산</a>
</body>
</html>
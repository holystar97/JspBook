<%@page import="java.util.LinkedHashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//사용자가 로그인함
	request.setCharacterEncoding("UTF-8");
	String username   = request.getParameter("username");
	String s_username = (String) session.getAttribute("username");
	//out.println("초기 세션: " + (String) session.getAttribute("username") + "<br>");
	
		LinkedHashMap<String, Integer> fruit_price = new LinkedHashMap<String,Integer>();
		fruit_price.put("사과"   	,100);
		fruit_price.put("귤"    	,200);
		fruit_price.put("파인애플" ,300);
		fruit_price.put("자몽"   ,400);
		fruit_price.put("레몬"   ,500);
		application.setAttribute("fruit_price", fruit_price);
	
	if(s_username == null) {
		session.setAttribute("username", username);
		//최초 접속 시 과일가격 map을 application에 넣는다.

	} else if(s_username != username) {
		session.removeAttribute("username");
		session.setAttribute("username", username);
		//다른 유저가 접속하면 기존에 구매이력은 삭제
		session.removeAttribute("fruit_buy");
	}
	//out.println("최종 세션: " + (String) session.getAttribute("username") + "<br>");
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
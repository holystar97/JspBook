<%@page import="java.util.HashMap"%>
<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Map.Entry"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	HashMap<String,LinkedHashMap<String,Integer>> list =(HashMap)session.getAttribute("list");
	LinkedHashMap<String, Integer> fruit_buy = list.get(session.getAttribute("username"));
	LinkedHashMap<String, Integer> fruit_price = (LinkedHashMap<String, Integer>) application.getAttribute("fruit_price");
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
		 //만약 구매한 fruit_buy목록이 없을 경우
			if (fruit_buy == null) {
					out.println("선택한 상품이 없습니다.");
				
		} else {

			int total = 0;
			// 구매한 fruit_buy목록에서 keyset()을 가지고 와서 
			for (String fruit : fruit_buy.keySet()) {
				application.log("fruit:" + fruit);
				int num = fruit_buy.get(fruit);
				out.println(fruit + ": " + fruit_buy.get(fruit) + "개 " + num * fruit_price.get(fruit) + "원 " + "<br>");
				total += num * fruit_price.get(fruit);
			}
			out.println("총 가격: " + total + "원" + "<br>");
		}
		%>
		
		<h2>상품 수정</h2>
	<hr>
	<form name="form1" method="post" action="new.jsp">
		<select name="product">
			<option value="사과">사과 100원</option>
			<option value="귤">귤 200원 </option>
			<option value="파인애플">파인애플 300원</option>
			<option value="자몽">자몽 400원 </option>
			<option value="레몬">레몬500원 </option>
		</select>
		개수 : <input type="text" name="num">개 
		<input type="submit" value="수정"/>
	</form>
		<a href="new_result.jsp">수정 완료</a>
	</center>
</body>
</html>
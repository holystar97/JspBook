<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch06 : checkOut.jsp</title>
</head>
<body>
<div align="center">
<h2>계산</h2>
선택한 상품 목록
<hr>
<%
HashMap<String, Integer> priceList = new HashMap<String, Integer>();

priceList.put("사과(100원)",100);
priceList.put("귤(200원)",200);
priceList.put("파인애플(300원)",300);
priceList.put("자몽(400원)",400);
priceList.put("레몬(500원)",500);
%>
<%
LinkedHashMap<String, Integer> list = (LinkedHashMap)session.getAttribute("productlist");

if(list == null){
	out.println("선택한 상품이 없습니다!!!");
}
else{
	Set<String> keys = list.keySet();
	Iterator<String> it = keys.iterator();
	int total_price = 0;
	while(it.hasNext()){
		String key = it.next();
		int quantity = list.get(key);
		int price = priceList.get(key)*quantity;
		out.println(key + " " + quantity + "개 "+ price + "원<br>");
		total_price += price;
	}
	out.println("전체 가격 : " + total_price + "원");
}
%>
</div>
</body>
</html>
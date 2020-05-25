<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%
request.setCharacterEncoding("UTF-8");
String product = request.getParameter("product");
Integer num = Integer.parseInt(request.getParameter("num"));
String username=(String)session.getAttribute("username");
//전체 과일 선택한 list 가져오기
	HashMap<String,LinkedHashMap<String,Integer>> list=(HashMap)session.getAttribute("list");
// fruit_buy에서 username에 해당하는 fruit 목록을 가지고 온다.
	LinkedHashMap<String,Integer> buyer =list.get(username);
	buyer.put(product,num);
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>
<%response.sendRedirect("checkOut.jsp");%>
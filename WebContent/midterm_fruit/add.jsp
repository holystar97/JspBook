<%@page import="java.util.HashMap"%>
<%@page import="java.util.LinkedHashMap"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	//과일명, 과일 개수, 유저 이름 가져오기
	String product = request.getParameter("product");
	int num = Integer.parseInt(request.getParameter("num"));
	String username=(String)session.getAttribute("username");
	
	// 전체 과일 선택한 list 가져오기
	HashMap<String,LinkedHashMap<String,Integer>> list=(HashMap)session.getAttribute("list");
	
	// 만약 전체 과일 선택한 list 가 없다면 생성
	if(list==null){
		list=new HashMap<String,LinkedHashMap<String,Integer>>();
		session.setAttribute("list",list);
	}
	// 전체 과일 list 중에 user가 fruit_buy한 것이 없다면 새로 생성 하고 전체 list 에 등록  
	if (list.get(username) == null){
		LinkedHashMap<String,Integer> fruit_buy;
		fruit_buy=new LinkedHashMap<String,Integer>();
		list.put(username,fruit_buy);
	}
	// fruit_buy에서 username에 해당하는 fruit 목록을 가지고 온다.
	LinkedHashMap<String,Integer> buyer =list.get(username);
	// 해당 제품을 이미 가지고 있다면 기존의 개수 에 새로 등록한 개수 더해주기
	if(buyer.containsKey(product)==true){
		int n = buyer.get(product);
		buyer.put(product,n+num);
	}else{
		buyer.put(product,num);
	}
	
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
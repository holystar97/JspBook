<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
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

	request.setCharacterEncoding("utf-8");
	String product=request.getParameter("product");
	int num=Integer.parseInt(request.getParameter("num"));

	LinkedHashMap<String,Integer> fruit_buy=null;
	LinkedHashMap<String,Integer> s_fruit_buy=(LinkedHashMap<String,Integer>)session.getAttribute("fruit_buy");
	if(s_fruit_buy==null){
		fruit_buy=new LinkedHashMap<String,Integer>();
		session.setAttribute("fruit_buy", fruit_buy);
	}else{
		fruit_buy=s_fruit_buy;
	}
	
	// 구매 이력 추가
	
	if (fruit_buy.containsKey(product)){
		//만약 구매 이력이 있는경우
		int n=fruit_buy.get(product);
		fruit_buy.put(product,n+num);
	}else{
		//구매 이력이 없는 경우
		fruit_buy.put(product,num);
	}
	session.setAttribute("fruit_buy",fruit_buy);	

%>

<script>
alert("<%=product%>이 (가) <%=num%>개 추가되었습니다 !! ");
history.go(-1);
</script>

</body>
</html>
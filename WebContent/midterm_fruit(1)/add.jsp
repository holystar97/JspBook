<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch06 : add.jsp</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");
String product = request.getParameter("product");
Integer num = Integer.parseInt(request.getParameter("num"));
String username = (String)session.getAttribute("username");

//ArrayList<String> list = (ArrayList)session.getAttribute("productlist");

//유저 목록 받아오기(session), null 일 때 생성
HashMap<String, LinkedHashMap<String, Integer>> product_list = (HashMap)session.getAttribute("product_list");
if(product_list == null){
	product_list = new HashMap<String, LinkedHashMap<String, Integer>>();
	session.setAttribute("product_list",product_list);
}
//유저 목록에 없는 사용자 로그인
if(product_list.get(username) == null){	//처음 로그인 한 사용자의 경우
	LinkedHashMap<String, Integer> list;	//새로운 해시맵(바구니) 생성
	list = new LinkedHashMap<String, Integer>();
	product_list.put(username, list);	//유저 목록에 추가
}

//현재 사용자 목록 선택 및 내용 추가
LinkedHashMap<String, Integer> cur_user = product_list.get(username);
if(cur_user.containsKey(product) == true)
	cur_user.put(product,cur_user.get(product)+num);
else
	cur_user.put(product,num);
%>
<script> alert("<%=product%>이(가) 추가되었습니다!!");
history.go(-1);
</script>

</body>
</html>
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
String productname = request.getParameter("product");
Integer fruit_quantity = Integer.parseInt(request.getParameter("quantity"));
String username = (String)session.getAttribute("username");

//ArrayList<String> list = (ArrayList)session.getAttribute("productlist");

//유저 목록 받아오기(session), null 일 때 생성
HashMap<String, LinkedHashMap<String, Integer>> user_list = (HashMap)session.getAttribute("user_list");
if(user_list == null){
	user_list = new HashMap<String, LinkedHashMap<String, Integer>>();
	session.setAttribute("user_list",user_list);
}
//유저 목록에 없는 사용자 로그인
if(user_list.get(username) == null){	//처음 로그인 한 사용자의 경우
	LinkedHashMap<String, Integer> list;	//새로운 해시맵(바구니) 생성
	list = new LinkedHashMap<String, Integer>();
	user_list.put(username, list);	//유저 목록에 추가
}

//현재 사용자 목록 선택 및 내용 추가
LinkedHashMap<String, Integer> cur_user = user_list.get(username);
if(cur_user.containsKey(productname) == true)
	cur_user.put(productname,cur_user.get(productname)+fruit_quantity);
else
	cur_user.put(productname,fruit_quantity);
%>
<script> alert("<%=productname%>이(가) 추가되었습니다!!");
history.go(-1);
</script>

</body>
</html>
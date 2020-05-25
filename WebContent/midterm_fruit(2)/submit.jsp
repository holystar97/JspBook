<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch06 : submit.jsp</title>
</head>
<body>
<%request.setCharacterEncoding("UTF-8");
String productname = request.getParameter("product");
Integer fruit_quantity = Integer.parseInt(request.getParameter("quantity"));
String username = (String)session.getAttribute("username");

//ArrayList<String> list = (ArrayList)session.getAttribute("productlist");

//유저 목록 받아오기(session)
HashMap<String, LinkedHashMap<String, Integer>> user_list = (HashMap)session.getAttribute("user_list");

//현재 사용자 목록 선택 및 내용 추가
LinkedHashMap<String, Integer> cur_user = user_list.get(username);
cur_user.put(productname,fruit_quantity);
%>
<script> alert("<%=productname%>이(가) 변경되었습니다!!");
//history.go(-1);
</script>
</body>
</html>
<%response.sendRedirect("checkOut.jsp");%>
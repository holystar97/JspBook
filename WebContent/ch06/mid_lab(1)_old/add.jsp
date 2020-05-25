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

//ArrayList<String> list = (ArrayList)session.getAttribute("productlist");
LinkedHashMap<String, Integer> list = (LinkedHashMap)session.getAttribute("productlist");
if(list == null){
	list = new LinkedHashMap<String, Integer>();
	session.setAttribute("productlist",list);
}

if(list.containsKey(productname) == true)
	list.put(productname,list.get(productname)+fruit_quantity);
else
	list.put(productname,fruit_quantity);

%>
<script> alert("<%=productname%>이(가) 추가되었습니다!!");
history.go(-1);
</script>

</body>
</html>
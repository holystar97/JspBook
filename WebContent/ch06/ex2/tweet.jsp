
<%@page import="java.util.Locale"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
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
request.setCharacterEncoding("UTF-8");
String msg=request.getParameter("msg");
Object username=session.getAttribute("user");
ArrayList<String> msgs=(ArrayList<String>)application.getAttribute("msgs");

if(msgs==null){
	msgs=new ArrayList<String>();
	application.setAttribute("msgs",msgs);
}
Date date= new Date();
SimpleDateFormat f=new SimpleDateFormat("E MMM dd HH:mm",Locale.KOREA);
msgs.add(username+ ":: "+msg + ", " +f.format(date));

application.log(msg+"추가됨");
response.sendRedirect("twitter_list.jsp");

%>
</body>
</html>
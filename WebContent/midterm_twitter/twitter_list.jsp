<%@page import="java.util.LinkedList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	LinkedList<String> msgs = (LinkedList<String>) application.getAttribute("msgs");
	//msgs 초기화
	if(msgs == null) {
		msgs = new LinkedList<String>();
		application.setAttribute("msgs", msgs);
	}

	//세션 초기화
	String username   = request.getParameter("username");
	String s_username = (String) session.getAttribute("s_username");
	//세션이 null이면
	if(s_username == null && username != null) {
		session.setAttribute("s_username", username);
		s_username = username;
	}
	//기존의 세션이름과새로 접속한 이름이 다를 시
	else if(!s_username.equals(username) && username != null) {
		session.setAttribute("s_username", username);
		s_username = username;
	}
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Twitter</title>
	<%
		String result = (String) session.getAttribute("result");
		application.log(result);
		if(result != null) {
			out.println(result);
			session.setAttribute("result", null);
		}
		
		
	%>
</head>
<body>
<div style="text-align:center;">
	<h3>My Simple Twitter!!</h3><hr>
	<form action="tweet.jsp" method="post">
		@<%=s_username%>
		<input type="text" name="msg">
		<input type="submit" value="Tweet">
	</form><hr>
	<div style="text-align:left;">
		<ul>
			<%
				for(int i = 0; i < msgs.size(); i++) {
					String msg = msgs.get(i);
					out.println("<li>");
					out.println(msg + " ");
			%>
					<input type="button" value="삭제" onclick="location.href='tweet.jsp?idx=<%=i%>&del_flag=y'">		
			<%		
					out.println("</li>");
				}
			%>		
		</ul>
	</div>
</div>
</body>
</html>
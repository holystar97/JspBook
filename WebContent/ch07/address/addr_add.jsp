<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="addr" class="jspbook.ch07.AddrBean" />
<jsp:setProperty property="*" name="addr"/>
<jsp:useBean id="am" class="jspbook.ch07.AddrManager" scope="application"/>

<%
am.add(addr);
%>

<html>
<head>
<meta charset="UTF-8">
<title>ch07: addr_add.jsp</title>
</head>
<body>
<center>
<h2>등록 내용</h2>
이름 : <jsp:getProperty property="username" name="addr"/><p>
전화번호 : <%=addr.getTel() %><p>
이메일 : <%=addr.getEmail() %><p>
성별 : <%=addr.getSex() %><p>
주소 : <%=addr.getAddr() %>

<hr>
<a href="addr_list.jsp">목록 보기 </a>

</center>
</body>
</html>
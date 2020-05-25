<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="person" class="jspbook.ch07.lab1.PersonBean"/>
<jsp:setProperty name="person" property="*"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>테스트 결과</title>
</head>
<body>
<div align="center">
<form name="form1" method="post" action="person_result.jsp">
<table border="1" cellspacing="1" cellpadding="25">
<tr>
<td colspan='2' align="center">
	Result
</td>
</tr>
<tr>
<td>
	이름 : <jsp:getProperty property="name" name="person"/><br>
	암호 : <%=person.getPassword() %>

</td>

<td>
	성별 <br>
	<%=person.getGender() %>
	
	<br><br>
	
	좋아하는 스포츠는? <br>
	<%
		String[] sports=person.getSport();
		
		for(String s:sports){
			out.println(s);
		}
	%>
	
</td>
</tr>

<tr>
	<td>
	좋아하는 과일은 ? <br>
	
	<%
		String[] fruits=person.getFruit();
		
		for(String s:fruits){
			out.println(s);
		}
		
	%>
	
	<br>
	
	좋아하는 음악은 ? <br>
	
	<%=person.getMusic() %>
	
	
	</td>
	
	<td>
	기타 제안 사항 <br>
	
	<%=person.getComment() %>
	
	
	</td>
	
</tr>

</table>
</form>
</div>
</body>
</html>
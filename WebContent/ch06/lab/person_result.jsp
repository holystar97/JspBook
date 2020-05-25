<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("UTF-8"); %>

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
	이름 : <%=request.getParameter("name") %><br>
	암호 : <%=request.getParameter("password") %>

</td>

<td>
	성별 <br>
	<%=request.getParameter("gender") %>
	
	<br><br>
	
	좋아하는 스포츠는? <br>
	<%
		String sports[]=request.getParameterValues("sport");
	
	for(String sport: sports){
		
		out.println(sport + "<br>");
	}
	
	
	%>
	
</td>
</tr>

<tr>
	<td>
	좋아하는 과일은 ? <br>
	
	<%
		String fruits[]=request.getParameterValues("fruit");

		for(String fruit: fruits){
			
			out.println(fruit + "<br>");
			
		}
	
	
	%>
	
	<br>
	
	좋아하는 음악은 ? <br>
	
	<%=request.getParameter("music") %>
	
	
	</td>
	
	<td>
	기타 제안 사항 <br>
	
	<%=request.getParameter("comment") %>
	
	
	</td>
	
</tr>

</table>
</form>
</div>
</body>
</html>
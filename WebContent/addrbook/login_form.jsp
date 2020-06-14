<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	
 %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
</head>
<body bgcolor="#FFFFFF">
<center>
<h2>로그인 </h2>
<hr>
<form method="post" action="addrbook_control.jsp" name="form1">
	<input type="hidden" name="action" value="logincheck">
	<table width="250" border="1" align="center" cellspacing="0" cellpadding="5">
		<tr>
		<td colspan="2" align="center">로그인</td>
		</tr>
	
		<tr>
		<td>아이디</td>
		<td><input type="text" name="m_id" size="10"></td>
		</tr>
	
		<tr>
		<td>패스워드</td>
		<td><input type="password" name="m_pw" size="10"></td>
		</tr>
	
	
		<tr>
			<td align ="center" colspan="2">
				<button type="submit">로그인</button>
				<button type = "button" onclick="location.href='member_join.jsp'">회원가입</button>
			</td>
		</tr>
	
	</table>
</form>



</center>
</body>
</html>
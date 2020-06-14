<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch11: forEach</title>
</head>
<body bgcolor="#FFFFFF">
<H3>&lt; c:for &gt;</H3>
<table>
<c:forEach var ="i"  begin ="1"  end="9" >
<tr>
	<c:forEach var ="j" begin ="1" end="9" >
	<td>
		${i} * ${j} = ${i*j}
	</td>	
</c:forEach>
</tr>
</c:forEach>
</table>
</body>
</html>
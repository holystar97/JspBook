<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch11: if</title>
</head>
<body bgcolor="#FFFFFF">
<H3>&lt;c:if &gt;</H3>
<c:set value="user1" var="msg"/>
msg:${msg}<br>
<c:if test="${msg == 'user1'}" var="result">
test result:${result}
</c:if>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch11: set</title>
</head>
<body bgcolor="#FFFFFF">
<h3>&lt;c:set&gt;</h3>
<c:set value="Hello World" var="msg"/>

msg: ${msg} <br>
msg: <%= pageContext.getAttribute("msg") %><br>
<c:set target="${member}" property="email" value="changed@test.net"/>
Member name: ${member.name} <br>
Member email: ${member.email} 

</body>
</html>
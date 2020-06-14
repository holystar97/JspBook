<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch11 : catch </title>
</head>
<body bgcolor="#FFFFFF">
<h3>&lt;catch &gt;</h3>
<c:catch var="errMsg">
	<%=9/0 %>
</c:catch>
error message: ${errMsg}
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch11: out </title>
</head>
<body bgcolor="#FFFFFF">
<h3> &lt;c:import&gt; </h3>

다음은 import를 이용해 포함한 것입니다. <hr>

<c:import url="out.jsp" var="myurl" />
<c:out value="${myurl}" escapeXml="false"/>
<hr>

<c:import url="http://www.google.com/index.html"  var="myurl2"/>
<c:out value="${myurl2}" escapeXml="false"/>

</body>
</html>
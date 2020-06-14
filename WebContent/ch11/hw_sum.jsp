<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sum</title>
</head>
<body>

<c:set var="sum" value="0"/>
<c:forEach var="i" begin="1" end="100">
<c:set var="sum" value="${sum+i}"/>
</c:forEach>
1부터 100까지의 합 : ${sum} <br/>

<c:set var="sum_even" value="0"/>
<c:set var="sum_odd" value="0"/>
<c:forEach var="i" begin="1" end="100">
<c:choose>


<c:when test="${i%2==0}">
<c:set var="sum_even" value="${sum_even+i}"/>
</c:when>

<c:otherwise>
<c:set var="sum_odd" value="${sum_odd+i}"/>
</c:otherwise>

</c:choose>
</c:forEach>

1부터 100까지 짝수의 합 : ${sum_even} <br/>
1부터 100까지 홀수의 합 : ${sum_odd} <br/>

</body>
</html>
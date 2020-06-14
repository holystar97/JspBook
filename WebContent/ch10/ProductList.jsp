<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ch10: EL 예제</title>
</head>
<body>
<center>
<h2>ch10: EL 예제- 상품 목록</h2>
<hr>
<form name="form1" method="post" action="ProductSel.jsp">
<jsp:useBean id="product" class="jspbook.ch10.Product" scope="session"/>
<select name="sel">

<c:forEach items ="${product.productList}" var="item">
	<option>${item}</option>
</c:forEach>

</select>
<input type="submit" value="선택"/>
</form>
</center>
</body>
</html>
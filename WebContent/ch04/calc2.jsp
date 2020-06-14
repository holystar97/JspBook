<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="calc" scope="page" class="jspbook.ch04.CalcBean04.CalcBean"/>
<jsp:setProperty name="calc" property="*" />
<%calc.calculate(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>계산기2</title>
</head>
<body>
<center>
<h2>계산기</h2>
<hr>
<form name="form1" method="post">

<input type="text" name="num1" width=200 size="5">
<select name="operator">
	<option selected>+</option>
	<option>-</option>
	<option>*</option>
	<option>/</option>
</select>

<input type="text" name="num2" width="200" size="5">
<input type="submit" value="계산" name="B1">
<input type="reset" value="다시 입력 " name="B2">
</form>
</center>

계산결과 : <jsp:getProperty property="result" name="calc"/>


</body>
</html>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%request.setCharacterEncoding("UTF-8"); %>

<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	String jdbc_driver = "com.mysql.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://127.0.0.1/jspdb?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=Asia/Seoul";
	try {
		Class.forName(jdbc_driver);

		conn = DriverManager.getConnection(jdbc_url, "root", "minkyung0615");
		String sql = "insert into jdbc_test values(?,?)";

		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("username"));
		pstmt.setString(2, request.getParameter("email"));

		if (request.getParameter("username") != null) {
			pstmt.executeUpdate();
		}
	} catch (Exception e) {
		System.out.println(e);
	}
%>



<html>
<head>
<meta charset="UTF-8">
<title>jdbc 테스트</title>
</head>
<body>
<center>
<h2>이벤트 등록</h2>
<hr>

<form name="form1" method="post">
등록 이름 : <input type="text" name="username">
주소 : <input type="text" name="email" size="20">
<input type="submit" value="등록">
</form>

<hr>
</center>

#등록 목록 <p>


<%	try{	String sql = "select username, email from jdbc_test";
		pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		int i=1;
		while(rs.next()) {
	out.println(i+" : "+rs.getString(1)+" , "+rs.getString("email")+"<BR>");
			i++;
		}
		rs.close();	  pstmt.close();  conn.close();
	}
	catch(Exception e) {
		System.out.println(e);	}
%>

</body>
</html>
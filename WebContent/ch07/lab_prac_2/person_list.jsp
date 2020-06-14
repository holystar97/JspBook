<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="jspbook.ch07.lab2.PersonBean"%>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="person" class="jspbook.ch07.lab2.PersonBean"/>
<jsp:useBean id="personManager" class="jspbook.ch07.lab2.PersonManager"/>
<%
	ArrayList<PersonBean> list = null;
	if(application.getAttribute("personList") == null) {
		list = new ArrayList<PersonBean>();
		application.setAttribute("personList", list); 
	} else {
		list = (ArrayList<PersonBean>) application.getAttribute("personList");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Person 목록</title>
</head>
<body>
<div align="center">
<table border="1" cellspacing="1" cellpadding="25">
<!-- list 출력 -->
	<tr>
		<th>이름</th>
		<th>암호</th>
		<th>성별</th>
		<th>좋아하는 스포츠</th>
		<th>좋아하는 과일</th>
		<th>좋아하는 음악</th>
		<th>기타 제안 사항</th>
	</tr>
	<%
		if(list.size() > 0) {
			for(PersonBean p : list) {
				out.println("<tr>");
				out.println("<td>"+ p.getName() + "</td>");
				out.println("<td>"+ p.getPassword() + "</td>");
				out.println("<td>"+ p.getGender() + "</td>");
				//좋아하는 스포츠 출력
				String[] sports = p.getSport();
				out.println("<td>");
				for(String sport : sports){
					out.println(sport + " ");
				}
				out.println("</td>");
				
				String[] fruits = p.getFruit();
				out.println("<td>");
				for(String fruit : fruits){
					out.println(fruit + " ");
				}
				out.println("</td>");
				
				out.println("<td>"+ p.getMusic() + "</td>");
				out.println("<td>"+ p.getComment() + "</td>");
				
				out.println("</tr>");				
			}
		}
	%>
</table>
<a href="person_form.html"><font size="3">작성하기</font></a>
</div>
</body>
</html>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.Locale"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");

	String msg		  		= request.getParameter("msg");
	String s_username		= (String) session.getAttribute("s_username");
	LinkedList<String> msgs = (LinkedList<String>) application.getAttribute("msgs");
	
	String del_flag = request.getParameter("del_flag");
	
	if(s_username == null) {
		application.log("s_username null");
		response.sendRedirect("tweet_list.jsp");
	}
	
	//1) del_flag가 null이면 추가
	if (del_flag == null) {
		Date date = new Date();
		SimpleDateFormat f = new SimpleDateFormat("E MMM dd HH:mm", Locale.KOREA);
		msgs.add(s_username + ":: " + msg + ", " + f.format(date));

		application.log(s_username + ": " + msg + " 추가");
		application.setAttribute("msgs", msgs);
	} else if(del_flag.equals("y")) {
	//2) del_flag가 y면 삭제 진행
		int idx	= Integer.parseInt(request.getParameter("idx"));
		
		String i_msg 	  = msgs.get(idx);
		String user   = i_msg.substring(0, i_msg.indexOf(":"));
		String result = "";
		
		if(s_username.equals(user)) {
			msgs.remove(idx);
			application.log(s_username + ": " + i_msg + " 제거");
			application.setAttribute("msgs", msgs);
			result = "<script>alert('삭제됨');</script>";		
		} else {
			result = "<script>alert('삭제불가');</script>";
		}
		session.setAttribute("result", result);
	}

	response.sendRedirect("tweet_list.jsp");
%>    
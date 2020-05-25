<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>footer.jsp</title>
</head>
<body>
	footer.jsp 에서 출력한 메시지입니다.
	<hr>
	
	<%
		String start=request.getParameter("start");
		String end= request.getParameter("end");
	
		int starts= Integer.parseInt(start);
		int ends=Integer.parseInt(end);
		int sum=0;
		for(int i=starts;i<=ends;i++){
			sum+=i;
		}
		out.println("total sum : "+ sum);
		
	%>
	

	
</body>
</html>
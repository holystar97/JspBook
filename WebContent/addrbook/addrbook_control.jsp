<%@page import="jspbook.member.Member"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="addrbook_error.jsp" import="jspbook.addrbook.*"%>
    
<%request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="ab" scope="page" class="jspbook.addrbook.AddrBean"/>
<jsp:useBean id="addrbook" class="jspbook.addrbook.AddrBook"/>
<jsp:setProperty name="addrbook" property="*"/>

<jsp:useBean id="mb" scope="page" class="jspbook.member.MemberBean"/>
<jsp:useBean id="member" class="jspbook.member.Member"/>
<jsp:setProperty name="member" property="*"/>


<%
	String action=request.getParameter("action");
	// 리스트 목록 조회 
	// AddrBook type의 ArrayList의 datas객체 가지고 와서 request 객체에 저장 
	// 리스트 페이지로 이동 (request 값 포함해서 전달)
	if(action.equals("list")){
		ArrayList<AddrBook> datas = ab.getDBList();
		request.setAttribute("datas",datas);
		pageContext.forward("addrbook_list.jsp");
	}
	// 주소록 내용 삽입 
	// addrbook객체를 매개변수로하는 insertDB로 삽입 
	// sendRedirect로 list action으로 다시 전송 
	else if (action.equals("insert")){
		// 현재 회원의 정보를 가져오기		
		if(ab.insertDB(addrbook)){
			response.sendRedirect("addrbook_control.jsp?action=list");
		}else{
			throw new Exception("DB 입력 오류");
		}
	}
	
	// 주소록 내용 편집 
	// getDB로 아이디와 비밀번호 비교 
	// forward로 edit_form.jsp로 이동 
	else if (action.equals("edit")){
		AddrBook abook=ab.getDB(addrbook.getAb_id());
		if(!(request.getParameter("upasswd").equals("1234"))){
			out.println("<script> alert('비밀번호가 틀렸습니다.!!'); history.go(-1);</script>");
		}else{
			request.setAttribute("ab",abook);
			pageContext.forward("addrbook_edit_form.jsp");
		}
		  
	}
	//주소록 내용 수정 
	//내용 수정 후 list로 다시 이동 
	else if (action.equals("update")){
		
		if(ab.updateDB(addrbook)){
			response.sendRedirect("addrbook_control.jsp?action=list");
		}else{
			throw new Exception("DB 갱신 오류");
		}
	}
	// 주소록 내용 삭제 
	// 
	else if (action.equals("delete")){
			if(ab.deleteDB(addrbook.getAb_id())){
				response.sendRedirect("addrbook_control.jsp?action=list");
			}else{
				throw new Exception("DB삭제 오류");
			}
	}
	// 회원가입 처리 
	else if (action.equals("join")){
		if(mb.insertMember(member)){
				response.sendRedirect("addrbook_control.jsp?action=login");
		}else{
			throw new Exception("회원가입 오류");
		}
	}
	else if (action.equals("login")){
		response.sendRedirect("login_form.jsp");
	}

	else if (action.equals("logincheck")){
		if(mb.checkMember(member.getM_id(),member.getM_pw())) {
			response.sendRedirect("addrbook_control.jsp?action=list");
		} else {
			out.println("<script> alert('회원정보가 일치하지 않습니다!'); document.location.href='addrbook_control.jsp?action=login'; </script>");
		}
		
	}
	
	else{
		out.println("<script>alert('action 파라미터를 확인해주세요!!')</script>");
	}

%>
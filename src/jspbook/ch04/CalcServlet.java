package jspbook.ch04;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalcServlet
 */
@WebServlet(description = "calculate numbers", urlPatterns = { "/CalcServlet" })
public class CalcServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	
		//doPost() 로 포워딩
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// 변수 선언
		int num1,num2;
		int result;
		String op;
		
		//클라이언트 응답시 전달될 컨텐트에 대한 mime type과 캐릭터 셋 지정
		response.setContentType("text/html;charset=UTF-8");
		
		// 클라이언트 응답을 위한 출력 스트림 확보
		PrintWriter out= response.getWriter();
		
		//HTML 폼을 통해 전달된 NUM1, NUM2 매개변수 값을 변수에 할당한다
		/*
		 * 이때 getParameter() 메서드는 문자열을 반환하므로 숫자형 데이터의 경우
		 * Integer.parseInt() 를 통해 int로 변환한다.
		 * */
		
		num1=Integer.parseInt(request.getParameter("num1"));
		num2=Integer.parseInt(request.getParameter("num2"));
		op=request.getParameter("operator");
		
		//calc() 메서드 호출로 결과를 받아 온다
		result=calc(num1,num2,op);
		
		
		out.println("<html>");
		out.println("<head><title>계산기</title></head>");
		out.println("<body><center>");
		out.println("<h2>계산 결과</h2>");
		out.println("<hr>");
		out.println(num1+""+op+""+num2+"="+result);
		out.println("</body></html>");
		
	}
	
	// 실제 계산 기능을 수행하는 메서드
	public int calc(int num1, int num2 ,String op) {
		int result=0;
		
		if(op.equals("+")) {
			result=num1+num2;
		}else if(op.equals("-")) {
			result=num1-num2;
		}else if(op.equals("*")) {
			result=num1*num2;
		}else if(op.equals("/")) {
			result=num1/num2;
		}
		return result;
	}
	
	
	
	

}

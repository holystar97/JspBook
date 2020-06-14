package jspbook.ch04;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CalcServlet2
 */
@WebServlet(description = "Calc2 서블릿", urlPatterns = { "/CalcServlet2" })
public class CalcServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		// 변수 선언 
		int num1,num2;
		int result,result2;
		String op;
		int start,end;
		
		// 클라이언트 응답시 전달될 컨텐트에 대한 mime type 과 캐릭터셋을 지정한다 
		response.setContentType("text/html; charset=UTF-8");
		
		// 클라이언트 응답을 위한 출력 스트림을 확보한다
		PrintWriter out = response.getWriter();
		
		// html 폼을 통해 전달된 num1 ,num2 매개 변수 값을 변수에 할당한다 
		/*
		 * 이때 getParameter() 메서드는 문자열을 반환하므로 숫자형 데이터의 경우 Integer.parseInt()를 통해
		 * int로 변환한다.
		 * */
		num1=Integer.parseInt(request.getParameter("num1"));
		num2=Integer.parseInt(request.getParameter("num2"));
		op=request.getParameter("operator");
	
		
		// Calc 클래스 인스턴스 생성 후 getResult 메서드 호출로 결과를 받는다 
	
		Calc calc= new Calc(num1,num2,op);
		result=calc.getResult();
		
		
		// 출력 스트릠을 통해 화면을 구성한다 .
		out.println("<html>");
		out.println("<head><title>계산기</title></head>");
		out.println("<body><center>");
		out.println("<h2>계산결과</h2>");
		out.println("<hr>");
		out.println(num1+" "+ op + " "+ num2 + " = " + result);
		
		out.println("<hr>");

		
		start=Integer.parseInt(request.getParameter("start"));
		end=Integer.parseInt(request.getParameter("end"));
		
		out.println("시작 숫자: "+ start);
		out.println("종료 숫자: "+ end);
		RandomSum randomSum =new RandomSum(start,end);
		result2=randomSum.getResult();
		out.println("시작 숫자부터 종료 숫자까지의 합: "+result2);
		
		out.println("</body></html>");		
		
		
		
	}

}

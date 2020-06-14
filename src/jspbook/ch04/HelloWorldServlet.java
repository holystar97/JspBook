package jspbook.ch04;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class HelloWorldServlet
 */
@WebServlet(description = "처음 만드는 서블릿", urlPatterns = { "/HelloWorldServlet" })
public class HelloWorldServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 콘텐츠 타입 선언 및 한글 설정
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out=response.getWriter();
	
		// HTML 형식으로 브라우저 출력 콘텐츠 작성
		out.println("<HTML>");
		out.println("<HEAD><TITLE>Hello World Servlet</TITLE></HEAD>");
		out.println("<BODY><H2>Hello World Servlet:헬로 월드</H2>");
		java.util.Date d=new java.util.Date();
		java.text.SimpleDateFormat sdf1=new java.text.SimpleDateFormat("yyyy-MM-dd");
		String formattedDate=sdf1.format(d);
		out.println("<br>"+ "Date:" + formattedDate+ "<br>");
		java.text.SimpleDateFormat sdf2= new java.text.SimpleDateFormat("hh:mm:ss a");
		String formattedTime=sdf2.format(d);
		out.println("Time: " + formattedTime +"<br>");
		out.println("현재 날짜는 :");
		out.println(new java.util.Date());
		out.println("</BODY>");
		out.println("</HTML>");
		out.close();
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

package jspbook.exer.ch04;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/CalcServlet1")
public class CalcServlet1 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			PrintWriter out = response.getWriter();
			
			int num2 = Integer.parseInt(request.getParameter("num2"));
			int num1 = Integer.parseInt(request.getParameter("num1"));
			String operator = request.getParameter("operator");
			
			out.println(num1);
			out.println(num2);
			out.println(operator);
			
			out.print("res:");
			int res = calc(num1, num2, operator);
			out.print(res);
			
	}
	public int calc(int num1, int num2, String operator) {
		if(operator.equals("+"))
			return (num1+num2);
		if(operator.equals("-"))
			return (num1-num2);
		if(operator.equals("*"))
			return (num1*num2);
		if(operator.equals("/"))
			return (num1/num2);
		
		return -100000;
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

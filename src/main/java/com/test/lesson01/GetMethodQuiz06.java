package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz06")
public class GetMethodQuiz06 extends HttpServlet {
	
	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 타입 지정
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/json");
		
		// request parameter
		int number1 = Integer.valueOf(request.getParameter("number1"));
		int number2 = Integer.valueOf(request.getParameter("number2"));
		
		int addition = number1 + number2;
		int subtraction = number1 - number2;
		int multiplication = number1 * number2;
		double division = (double)number1 / number2;
		
		// json으로 출력
		PrintWriter out = response.getWriter();
		out.print("{\"addition\": " + addition 
				+ ", \"subtraction\": " + subtraction
				+ ", \"multiplication\": " + multiplication 
				+ ", \"division\": " + division + "}");
		
		
	}
	
	
}

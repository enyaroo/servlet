package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson01/quiz05")
public class GetMethodQuiz05 extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// 깨짐 방지
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html");
		
		// request parameter
		int dan = Integer.valueOf(request.getParameter("number"));
		
		// 연산 + 출력
		PrintWriter out = response.getWriter();
		out.print("<html><head><title>" + dan + "단");
		out.print("</title></head><body><hr><ul>");
		for (int i = 1; i <= 9; i++) {
			out.print("<li>" + dan + " X " + i + " = " + (dan * i) + "</li>");
		}
		out.print("</ul></body></html>");
	}
	
}

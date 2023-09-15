package com.test.lesson04;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/lesson04/quiz03/update")
public class Quiz03Update extends HttpServlet {
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) {
		
		// 앞에 아이디 가져오는거 한줄 빼먹음
		String title = request.getParameter("title");
		int price = Integer.parseInt(request.getParameter("price"));
		String discription = request.getParameter("discription");
		String pictureUrl = request.getParameter("pictureUrl");
		
		
	}
}

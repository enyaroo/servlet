package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet ("/lesson01/quiz10")
public class PostMethodQuiz10 extends HttpServlet {

	private final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "marobiana");
	        put("password", "qwerty1234");
	        put("name", "신보람");
	    }
	};
	
	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
		response.setContentType("text/plain");
		
		String userId = request.getParameter("userId");
		String password = request.getParameter("password");
		
		PrintWriter out = response.getWriter();
		
		String dbid = userMap.get("id");
		String dbpw = userMap.get("password");
		String dbname = userMap.get("name");
		
		if (userId.equals(dbid) && password.equals(dbpw)) {
			out.print(dbname + "님 환영합니다.");
		} else if (password.equals(dbpw) == false) {
			out.print("비밀번호가 일치하지 않습니다.");			
		} else if (password.equals(dbid) == false) {
			out.print("아이디가 일치하지 않습니다.");
		}
		
	}
}

<%@page import="java.util.Iterator"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Quiz01</title>
	</head>
	<body>
		<%-- 1 --%>
		<%!
			private int num;
			public int getSum(int num) {
				int sum = 0;
				for (int i = 1; i <= num; i++) {
					sum += i;
				}
				return sum;
			}
		%>
		<b>1부터 50까지의 합계는 <%= getSum(50) %>입니다</b>
		<br>
		
		<%-- 2 --%>
		<%
			int[] scores = {80, 90, 100, 95, 80};
			int sum = 0;
			for (int i = 0; i < scores.length; i++) {
				sum += scores[i];
			}
			double avg = (double)sum / scores.length;
		%>
		<b>평균 점수는 <%= avg %>입니다</b>
		<br>
		
		<%-- 3 --%>
		<%
			List<String> scoreList = Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
			Iterator<String> iter = scoreList.iterator();
			double sum2 = 0;
			while (iter.hasNext()) {
				String answer = iter.next();
				if (answer.equals("O")) {
					sum2 += 100 / scoreList.size();
				}
			}
		%>
		<b>채점 결과는 <%= sum2 %>점 입니다</b>
		<br>
		
		<%-- 4 --%>
		<%
			String birthDay = "20010820";
			int birthYear = Integer.valueOf(birthDay.substring(0,4));
			int age = 2023 - birthYear;
		%>
		<b><%= birthDay %>의 나이는 <%= age %>세 입니다</b>
		
	</body>
</html>
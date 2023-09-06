<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="UTF-8">
			<title>결과</title>
		</head>
		<body>
			<%
				// type="text"
				String nickname = request.getParameter("nickname");
				String hobby = request.getParameter("hobby");
				
				// type="radio" - 값이 어차피 1개이므로 text로 받아오는것과 동일
				String animal = request.getParameter("animal");
				
				// select > option - 값이 어차피 1개이므로 text로 받아오는것과 동일
				String fruit = request.getParameter("fruit");
				
				// type="checkbox" - 선택 항목 값이 여러개일 때!
				String[] foodArr = request.getParameterValues("food");
			%>
			<table border="1">
				<tr>
					<th>별명</th>
					<td><%= nickname %></td>
				</tr>
				<tr>
					<th>취미</th>
					<td><%= hobby %></td>
				</tr>
				<tr>
					<th>선호하는 동물</th>
					<td><%= animal %></td>
				</tr>
				<tr>
					<th>좋아하는 과일</th>
					<td><%= fruit %></td>
				</tr>
				<tr>
					<th>선호하는 음식</th>
					<td>
						<%
							if (foodArr != null) {
								String result = "";
								for (String food : foodArr) {
									result += food + ", ";
								}
								
								// 마지막 "," 제거
								// 0, result 길이 - 1 => substring
								result = result.substring(0, (result.length() - 2));
								out.print(result);
							}
						%>
					</td>
				</tr>
			</table>
		</body>
	</html>
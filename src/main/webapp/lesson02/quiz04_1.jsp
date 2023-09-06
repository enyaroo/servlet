<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="UTF-8">
			<title>길이 변환 결과</title>
		</head>
		<body>
			<%
				int input = Integer.parseInt(request.getParameter("input"));
				String[] unitArr = request.getParameterValues("unit");
				
				double toInch = input / 2.54;
				double toYard = input / 91.44;
				double toFeet = input / 30.48;
				double toMeter = input / 100.0;
			%>
			<h1>길이 변환 결과</h1>
			<h2><%= input %>cm</h2>
			<hr>
			<h2>
				<%
					if (unitArr != null) {
						for (String unit : unitArr) {
							if (unit.equals("inch")) {
								out.print(toInch + "in<br>");
							} else if (unit.equals("yard")) {
								out.print(toYard + "yd<br>");
							} else if (unit.equals("feet")) {
								out.print(toYard + "ft<br>");
							} else if (unit.equals("meter")) {
								out.print(toMeter + "m<br>");
							}
						}
					}
				%>
			</h2>
		</body>
	</html>
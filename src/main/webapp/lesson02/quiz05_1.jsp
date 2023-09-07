<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="UTF-8">
			<!-- bootstrap CDN -->
			<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
			<script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
			<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>		
		
			<title>계산기</title>
		</head>
		<body>
			<div class="container">
				<h1>계산 결과</h1>
				<div class="display-4">
					<%	
						int num01 = Integer.parseInt(request.getParameter("num01"));
						int num02 = Integer.parseInt(request.getParameter("num02"));
						String cal = request.getParameter("calculate");
						
						if (cal.equals("+")) {
							int sum = num01 + num02;
							out.print(num01 + " + " + num02 + " = <span class=\"text-primary\">" + sum + "<span>");
						} else if (cal.equals("-")) {
							int sub = num01 - num02;
							out.print(num01 + " - " + num02 + " = <span class=\"text-primary\">" + sub + "<span>");
						} else if (cal.equals("*")) {
							int mul = num01 * num02;
							out.print(num01 + " * " + num02 + " = <span class=\"text-primary\">" + mul + "<span>");
						} else if (cal.equals("/")) {
							double div = num01 / (double)num02;
							out.print(num01 + " / " + num02 + " = <span class=\"text-primary\">" + div + "<span>");
						}
					%>
				</div>
			</div>
		
		</body>
	</html>
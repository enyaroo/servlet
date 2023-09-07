<%@page import="java.util.Iterator"%>
<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
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
		
			<title>장보기 목록</title>
		</head>
		<body>
			<div class="container text-center">
				<h2>장보기 목록</h2>
				<table class="table">
					<thead>
						<tr>
							<th scope="col">번호</th>
							<th scope="col">품목</th>
						</tr>
					</thead>
					<tbody>
						<%
							List<String> goodsList = Arrays.asList(new String[] {
								"저지방 우유", "요플레 4개", "딸기 1팩", "삼겹살 300g", "생수 6개", "주방 세제"
							});
							
							for (int i = 0; i < goodsList.size(); i++) {
						%>
						<tr>
							<td scope="row"><%= (i + 1) %></td>
							<td><%= goodsList.get(i) %></td>
						</tr>
						<%
							};
						%>	
					</tbody>
				</table>
				<br><br>
				
				<h2>장보기 목록 Iterator</h2>
				<table class="table">
					<thead>
						<tr>
							<th scope="col">번호</th>
							<th scope="col">품목</th>
						</tr>
					</thead>
					<tbody>
						<%
							Iterator<String> iter = goodsList.iterator();
							int listNum = 1;
							while (iter.hasNext()) {
								String goods = iter.next();
						%>
						<tr>
							<td scope="row"><%= listNum %></td>
							<td><%= goods %></td>
						</tr>
						<%
							listNum++;
							}
						%>	
					</tbody>
				</table>
				<br><br>
				
				<h2>장보기 목록 향상된 for</h2>
				<table class="table">
					<thead>
						<tr>
							<th scope="col">번호</th>
							<th scope="col">품목</th>
						</tr>
					</thead>
					<tbody>
						<%
							listNum = 1;
							for (String goods : goodsList) {
						%>
						<tr>
							<td scope="row"><%= listNum %></td>
							<td><%= goods %></td>
						</tr>
						<%
							listNum++;
							}
						%>	
					</tbody>
				</table>
			</div>			
		</body>
	</html>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
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
			
			<title>즐겨찾기</title>
		</head>
		<body>
		<div class="container">
			<%
				MysqlService ms = MysqlService.getInstance();
				ms.connect();
				
				String selectQuery = "select * from `site`";
				ResultSet res = ms.select(selectQuery);
			%>
				<table class="table text-center">
					<thead>
						<tr>
							<th class="col-3">사이트</th>
							<th class="col-7">사이트 주소</th>
							<th class="col-2">삭제</th>
						</tr>
					</thead>
					<tbody>
					<% 
						while (res.next()) {
					%>
						<tr>
							<td class="col-3"><%= res.getString("name") %></td>
							<td class="col-7"><a href="<%= res.getString("url") %>"><%= res.getString("url") %></a></td>
							<td class="col-2"><a class="text-muted text-decoration-none" href="/lesson04/delete-site?id=<%= res.getInt("id") %>">삭제</a></td>
						</tr>
					<%
						}
					%>
					</tbody>
				</table>
				<div class="d-flex justify-content-right"><a class="btn btn-success" href="/lesson04/quiz02/addSite.jsp">즐겨찾기 추가</a></div>
				
		</div>
		</body>
	</html>
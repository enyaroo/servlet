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
			
			<style>
				a, a:hover {text-decoration:none;}
				
				header {height:100px}
				footer {height:80px}
			</style>
			
			<title>Melong</title>
		</head>
		<body>
			<div class="container">
				<jsp:include page="header.jsp" />
				<jsp:include page="nav.jsp" />
				<section>
					<%-- 아티스트 정보 영역 --%>
					<jsp:include page="artistinfo.jsp" />
					<%-- 곡 목록 영역 --%>
					<jsp:include page="songtable.jsp" />
				</section>
				<hr>
				<footer class="text-secondary">Copyright 2021. Melong All Rights Reserved</footer>
			</div>
		</body>
	</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="UTF-8">
			<title>즐겨찾기 추가</title>
		</head>
		<body>
			즐겨찾기 추가<br>
			<form method="post" action="/lesson04/insert-site">
				사이트명:<br>
				<input type="text" name="name"><br>
				사이트 주소:<br>
				<input type="text" name="url"><br>
				<input type="submit" value="추가">			
			</form>
		</body>
	</html>
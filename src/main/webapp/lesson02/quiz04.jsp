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
		
			<title>길이 변환</title>
		</head>
		<body>
			<div class="container">
				<h1>길이 변환</h1>
				<form method="post" action="/lesson02/quiz04_1.jsp">
					<div class="d-flex align-items-end">
						<input type="text" class="form-control col-2 mr-3" name="input" placeholder="길이를 입력하세요">
						<span>cm</span>
					</div>
					<div class="mt-2">
						<label for="inch">인치</label>
						<input type="checkbox" id="inch" name="unit" value="inch">
						<label for="yard">야드</label>
						<input type="checkbox" id="yard" name="unit" value="yard">
						<label for="feet">피트</label>
						<input type="checkbox" id="feet" name="unit" value="feet">
						<label for="meter">미터</label>
						<input type="checkbox" id="meter" name="unit" value="meter">
					</div>
					<div>
						<button type="submit" class="btn btn-success">변환하기</button>
					</div>
				</form>
			</div>
		</body>
	</html>
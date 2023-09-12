<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header class="d-flex">
	<%-- 로고 영역 --%>
	<div id="logo" class="col-2 d-flex justify-content-center align-items-center">
		<h3><a href="#" class="text-success">Melong</a></h3>
	</div>
	<%-- 검색 영역 --%>
	<form method="post" action="/lesson03/quiz02/main1.jsp" id="searchbar" class="input-group col-10 d-flex align-items-center">
		<input type="text" name="search" class="col-5 form-control">
		<div class="input-group-append">
			<button type="submit" class="btn btn-info">검색</button>
		</div>
	</form>
</header>
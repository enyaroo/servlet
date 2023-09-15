<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
물건 올리기<br>
<form method="post" action="/lesson04/quiz03/update">
	<div class="form-group d-flex">
		<select class="form-control" name="sellerId">
			<option>-아이디 선택-</option>
		<%
			MysqlService ms = MysqlService.getInstance();
			ms.connect();
			
			String selectQuery = "select * from `seller`";
			ResultSet res = ms.select(selectQuery);
			while (res.next()) {
		%>
			<option><%= res.getString("nickname") %></option>
		<%
			}
			ms.disconnect();
		%>
		</select>
		<input type="text" class="form-control" name="title">
		<div class="input-group">
			<input type="text" class="form-control" name="price">
			<div class="input-group-append">
				<span class="input-group-text">원</span>
			</div>
		</div>
	</div>
	<textarea class="form-control" name="discription"></textarea>
	<div class="input-group">
		<div class="input-group-prepend">
			<span class="input-group-text">이미지 url</span>
		</div>
		<input type="text" class="form-control" name="pictureUrl">
	</div>
	<input type="submit" class="btn btn-primary" value="저장">
</form>
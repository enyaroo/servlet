<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MysqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	MysqlService ms = MysqlService.getInstance();
	ms.connect();
	
	String selectQuery = "select A.*, B.* "
			+ "from seller as A " 
			+ "join used_goods as B "
			+ "on A.id = B.sellerId";
	ResultSet res = ms.select(selectQuery);
	while (res.next()) {
%>
<div id="card" class="bg-light">
	<div><img src="<%= res.getString("pictureUrl") %>" class="img-fluid"></div>
	<div><%= res.getString("title") %></div>
	<div><%= res.getInt("price") %></div>
	<div><%= res.getString("nickname") %></div>
</div>
<%
	}
	ms.disconnect();
%>
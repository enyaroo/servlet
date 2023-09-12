<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%-- 아티스트 데이터 --%>
<%
Map<String, Object> artistInfo = new HashMap<>();
artistInfo.put("name", "아이유");
artistInfo.put("debute", 2008);
artistInfo.put("agency", "EDAM엔터테인먼트");
artistInfo.put("photo", "http://image.genie.co.kr/Y/IMAGE/IMG_ALBUM/081/867/444/81867444_1616662460652_1_600x600.JPG");
%>

<div class="d-flex mt-4 border border-success p-3">
	<%-- 이미지 --%>
	<div class="mr-3">
		<img
			src="<%= artistInfo.get("photo") %>"
			alt="앨범 표지" width="150">
	</div>
	<%-- 가수 정보 --%>
	<div class="ml-3">
		<h3><%= artistInfo.get("name") %></h3>
		<div><%= artistInfo.get("agency") %></div>
		<div><%= artistInfo.get("debute") %></div>
	</div>
</div>
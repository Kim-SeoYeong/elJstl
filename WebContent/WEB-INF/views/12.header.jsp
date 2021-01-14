<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page import="vo.UserVo" %>

<%
	UserVo authUser = (UserVo)session.getAttribute("authUser");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="header">
		<h1><a href="">MySite</a></h1>
		
		<%if(authUser == null) {%>
			<ul>
				<li><a href="/mysite2/user?action=loginForm">로그인</a></li>
				<li><a href="/mysite2/user?action=joinForm">회원가입</a></li>
			</ul>
		<%} else if(authUser != null) {%>
			<!-- 로그인 성공했을 때 (= session 영역에 authUser이라는 값이 있으면) -->
			<ul>
				<li><%=authUser.getName() %>님 안녕하세요^^</li>
				<li><a href="/mysite2/user?action=logout">로그아웃</a></li>
				<li><a href="/mysite2/user?action=updateForm">회원정보수정</a></li>
			</ul>
		<%} %>
	</div>
	<!-- //header -->
	
	<br><br>
	<div id="header">
		<h1><a href="">MySite</a></h1>
		<c:choose>
			<c:when test="empty ${sessionScope.authUser}">	<!-- authUser이 null이냐 -->
				<ul>
					<li><a href="/mysite2/user?action=loginForm">로그인</a></li>
					<li><a href="/mysite2/user?action=joinForm">회원가입</a></li>
				</ul>
			</c:when>
			<c:otherwise>
				<ul>
					<li>${sessionScope.authUser.name} 님 안녕하세요^^</li>
					<li>${authUser.name} 님 안녕하세요^^</li>
					<li><a href="/mysite2/user?action=logout">로그아웃</a></li>
					<li><a href="/mysite2/user?action=updateForm">회원정보수정</a></li>
				</ul>
			</c:otherwise>
		</c:choose>
	</div>
	
</body>
</html>
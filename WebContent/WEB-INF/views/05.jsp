<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "vo.UserVo" %>

<h1>세션값 사용</h1>

<h2>자바코드일때</h2>

<% 
	UserVo authUser = (UserVo)session.getAttribute("authUser"); 
	
%>

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

<h2>e1일때</h2>

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
				<li>${authUser.name}님 안녕하세요^^</li> <!-- sessionScope를 생략할 수 있다. -->
				<li>${sessionScope.authUser.name}님 안녕하세요^^</li>
				<li><a href="/mysite2/user?action=logout">로그아웃</a></li>
				<li><a href="/mysite2/user?action=updateForm">회원정보수정</a></li>
			</ul>
		<%} %>
	</div>
	<!-- //header -->
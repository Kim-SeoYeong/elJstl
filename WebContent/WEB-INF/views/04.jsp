<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vo.UserVo" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>객체접근</h1>
	
	<h2>자바문법</h2>
	<%
		UserVo userVo = (UserVo)request.getAttribute("userVo");
		int num = (int)request.getAttribute("num");
		String str = (String)request.getAttribute("str");
	%>
	
	userVo.name = <%=userVo.getName() %> <br>
	userVo.email = <%=userVo.getEmail() %> <br>
	userVo.password = <%=userVo.getPassword() %> <br>
	userVo.gender = <%=userVo.getGender() %> <br>
	<br>
	num = <%=num %> <br>
	str = <%=str %> <br>
	
	
	<h2>el</h2>
	<!-- attribute값을 가져올때는 requestScope라고 적어줌. -->
	num = ${requestScope.num} <br>
	str = ${requestScope.str} <br>
	<br>
	<!-- requestScope를 생략할 수 있다. -->
	num = ${num} <br>
	str = ${num} <br>
	<br>
	userVo.name = ${userVo.name} <br>	<!-- requestScope를 생략할 수 있다. -->
	userVo.name = ${requestScope.userVo.name} <br>
	userVo.email = ${requestScope.userVo.email} <br>
	uesrVo.password = ${requestScope.userVo.password} <br>
	userVo.gender = ${requestScope.userVo.gender} <br>
	
	
	
	
	
	
	
	
	
	
</body>
</html>
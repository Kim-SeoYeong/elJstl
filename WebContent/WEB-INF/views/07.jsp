<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	pageContext.setAttribute("name", "page name");
	request.setAttribute("name", "request name");
	session.setAttribute("name", "session name");
	application.setAttribute("name", "application name");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>범주 우선순위</h1>
	
	<h2>자바일때</h2>
	page = <%=pageContext.getAttribute("name") %> <br>
	request = <%=request.getAttribute("name") %> <br>
	session = <%=session.getAttribute("name") %> <br>
	application = <%=application.getAttribute("name") %> <br>
	
	<h2>el일때</h2>
	page = ${pageScope.name} <br>
	request = ${requestScope.name} <br>
	session = ${sessionScope.name} <br>
	application = ${applicationScope.name} <br>
	<br><br>
	
	<!-- scope를 생략했을 경우 -->
	<!-- page < request < session < application이라 생략하면 가장 작은범위인 page부분이 나옴. -->
	page = ${name} <br>
	request = ${name} <br>
	session = ${name} <br>
	application = ${name} <br>
	
	
	
	
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>연산</h1>
	
	\${5+2} ==> ${5+2} <br>
	\${5-2} ==> ${5-2} <br>
	\${5*2} ==> ${5*2} <br>
	
	<br>
	\${5/2} ==> ${5/2} <br>
	\${5 div 2} ==> ${5 div 2} <br>
	
	<br>
	\${5%2} ==> ${5%2} <br>
	\${5 mod 2} ==> ${5 mod 2} <br>
	
	<br>
	<br>
	<br>
	\${5>2} ==> ${5>2} <br>
	\${5 gt 2} ==> ${5 gt 2} <br>
	
	<br>
	\${5>=2} ==> ${5>=2} <br>
	\${5 ge 2} ==> ${5 ge 2} <br>
	
	<br>
	\${5<=2} ==> ${5<=2} <br>
	\${5 le 2} ==> ${5 le 2} <br>
	
	<br>
	\${5==2} ==> ${5==2} <br>
	\${5 eq 2} ==> ${5 eq 2} <br>
	
	<br>
	\${5!=2} ==> ${5!=2} <br>
	\${5 ne 2} ==> ${5 ne 2} <br>
	
	<br>
	<br>
	<br>
	\${5>2 ? 5 : 2} ==> ${5>2 ? 5 : 2} <br> <!-- 참이면 5고 거짓이면 2이다. -->
	\${5<2 ? 5 : 2} ==> ${5>2 ? 5 : 2} <br> <!-- 참이면 5고 거짓이면 2이다. -->
	
	<br>
	<br>
	<br>
	\${5>2 && 2>10} ==> ${5>2 && 2>10} <br>
	\${5>2 || 2>10} ==> ${5>2 || 2>10} <br>
	\${!(5>2)} ==> ${!(5>2)} <br>
	
	<br>
	<br>
	\${empty str} ==> ${empty str} <br>	<!-- str이 null이니? -->
	${reqVal}
	\${empty reqVal} ==> ${empty reqVal} <br> <!-- reqVal이 null이니? false -->
	
	
	
</body>
</html>
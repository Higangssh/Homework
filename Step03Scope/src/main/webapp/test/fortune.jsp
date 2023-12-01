<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String fortune = (String)request.getAttribute("fortuneToday");
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<p>
			오늘의 운세 : <strong><%=fortune%></strong>
		</p>
	</div>
</body>
</html>
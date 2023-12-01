<%@page import="test.dto.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberDto member = (MemberDto)request.getAttribute("MemberDto");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>회원정보</h1>
		<p>번호:<%=member.getNum() %></p>
		<p>이름:<%=member.getName() %></p>
		<p>주소:<%=member.getAddr() %></p>
	</div>
</body>
</html>
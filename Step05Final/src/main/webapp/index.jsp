<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/index.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1>인덱스 페이지 입니다</h1>
		<%if(id!=null){ %>
			<p>
				<a href="${pageContext.request.contextPath}/user/protected/info.jsp"><%=id %></a>님 로그인 상태입니다.
				<a href="${pageContext.request.contextPath}/user/logout.jsp">로그아웃</a>
			</p>
		<%}else{ %>
			<ul>
				<li><a href="${pageContext.request.contextPath}/user/signup_form.jsp">회원가입</a></li>
				<li><a href="${pageContext.request.contextPath}/user/loginform.jsp">다시 로그인하러가기</a></li>
				<li><a href="${pageContext.request.contextPath}/user/protected/info.jsp">개인 정보</a></li>
			</ul>
		<% }%>
	</div>
</body>
</html>
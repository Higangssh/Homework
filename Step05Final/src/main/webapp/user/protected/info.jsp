<%@page import="test.user.dao.UserDao"%>
<%@page import="test.user.dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id =(String)session.getAttribute("id");
	UserDto dto = UserDao.getInstance().getData(id);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<a href="updateform.jsp">개인 정보 수정</a>
		<h1>가입 정보 입니다</h1>
		<table border="1">
			<tr>
				<th>아이디</th>
				<td><%=id%></td>
			</tr>
			<tr>
				<th>프로필 이미지</th>
				<td></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td>
					<a href="pwd_updateform.jsp">수정하기</a>
				</td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><%=dto.getEmail() %></td>
			</tr>
			<tr>
				<th>가입일</th>
				<td><%=dto.getRegdata() %></td>
			</tr>
		</table>
	</div>
</body>
</html>
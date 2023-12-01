<%@page import="test.user.dao.UserDao"%>
<%@page import="test.user.dto.UserDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//1. 폼전송되는 id,pwd 를 읽어와서
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	//2. id 에 해당하는 회원정보를 UserDao 객체를 이용해서 얻어와서
	UserDto dto = UserDao.getInstance().getData(id);
	boolean login = false;
	//3. 실제로 존재하는 아이디 이고 존재한다면 비밀번호도 일치하는지 비교해서
	if(dto !=null){
		if(pwd.equals(dto.getPwd())){
			login = true;
			session.setAttribute("id", id);
			session.setMaxInactiveInterval(360);
		}		
	}

	//4. 일치하면 로그인 처리, 아니면 아디 혹은 비밀번호가 틀려요라고 응답한다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/user/login.jsp</title>
</head>
<body>
	<div class="container">
		<h1>알림</h1>
		<%if(login){ %>
			<p>
				<strong><%=id %></strong>님 로그인 되었습니다.
				<a href="../index.jsp">인덱스로 돌아 가기</a>
			</p>
		<%}else{ %>
			<p>
				로그인에 실패 했습니다.
				<a href="loginform.jsp">다시 로그인하러 가기</a>
				<a href="../index.jsp">인덱스로 돌아 가기</a>
			</p>
		<%} %>
	</div>
</body>
</html>
<%@page import="test.user.dto.UserDto"%>
<%@page import="test.user.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String email = request.getParameter("email");
	String id = (String)session.getAttribute("id");
	UserDto dto = new UserDto();
	dto.setEmail(email);
	dto.setId(id);
	boolean isSuccess = UserDao.getInstance().update(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		if(<%=isSuccess%>){
			alert("성공")
			location.href="${pageContext.request.contextPath}/user/protected/info.jsp";
		}else{
			alert("실패")
			location.href="${pageContext.request.contextPath}/user/protected/info.jsp";
		}
	</script>
</body>
</html>
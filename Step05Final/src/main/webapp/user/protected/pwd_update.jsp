<%@page import="test.user.dto.UserDto"%>
<%@page import="test.user.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
	String pwd = request.getParameter("pwd") ;
	String newPwd = request.getParameter("pwd2");

	boolean isSuccess = false;
	String currentPwd =UserDao.getInstance().getData(id).getPwd();
	if(currentPwd.equals(pwd)){
		UserDto dto =new UserDto();
		dto.setId(id);
		dto.setPwd(pwd);
		isSuccess=UserDao.getInstance().updatePwd(dto);
	}
	if(isSuccess){
		session.invalidate();
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		if(<%=isSuccess %>){
			alert("성공")
			location.href="${pageContext.request.contextPath}/user/loginform.jsp";
		}else{
			alert("실패")
			location.href="${pageContext.request.contextPath}/user/loginform.jsp";
		}
	</script>	
</body>
</html>
<%@page import="test.guest.dao.GuestDao"%>
<%@page import="test.guest.dto.GuestDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	String pwd = request.getParameter("pwd");
	GuestDto dto = new GuestDto();
	dto.setWriter(writer);
	dto.setContent(content);
	dto.setPwd(pwd);
	boolean isSuccess = GuestDao.getInstance().insert(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		<%if(isSuccess){%>
			//알림창 띄우가
			alert("글을 성공적으로 등록 했습니다.");
			//javascript 로 페이지 이동
			location.href="${pageContext.request.contextPath }/guest/list.jsp";
		<%}else{%>
			alert("등록 실패!");
			location.href="${pageContext.request.contextPath }/guest/insertform.jsp";
		<%}%>
	</script>
</body>
</html>
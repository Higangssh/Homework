<%@page import="test.guest.dao.GuestDao"%>
<%@page import="test.guest.dto.GuestDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	int num = Integer.parseInt(request.getParameter("num"));
	String writer = request.getParameter("writer");
	String content = request.getParameter("content");
	String pwd = request.getParameter("pwd");
	GuestDto dto = new GuestDto();
	dto.setNum(num);
	dto.setContent(content);
	dto.setWriter(writer);
	dto.setPwd(pwd);
	boolean isSuccess = GuestDao.getInstance().update(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1>알림</h1>
	<%if(isSuccess){ %>
		<p>
			<strong><%=writer %></strong> 님이 작성한 글이 수정되었습니다.
			<a href="list.jsp">목록보기</a>
		</p>
	<%}else{ %>
		<p>
			수정 실패!
			<a href="updateform.jsp?num=<%=num%>">다시 작성</a>
		</p>
	<%} %>
</body>
</html>
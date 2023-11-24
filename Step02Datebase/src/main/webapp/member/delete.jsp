<%@page import="test.member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	//회원 한명의 정보를 삭제하고
	int num = Integer.parseInt(request.getParameter("num"));
	//회원 한명의 정보를 삭제하고 (삭제할 회원의 번호는)
	boolean isSuccess =MemberDao.getInstance().delete(num);
	//응답
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>알림</h1>
		<%if(isSuccess){ %>
			<p>
				<strong><%=num %></strong> 번 회원 정보를 삭제 했습니다.
				<a href="list2.jsp">돌아가기</a>
			</p>
		<%}else{ %>
			<p>
				삭제실패!
				<a href="list2.jsp">돌아가기</a>
			</p>
		<%}%>
	</div>
</body>
</html>
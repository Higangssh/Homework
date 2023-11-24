<%@page import="test.dept.dto.DeptDto"%>
<%@page import="test.dept.dao.DeptDao"%>
<%@page import="test.member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	int deptno = Integer.parseInt(request.getParameter("deptno"));
	DeptDto dto = DeptDao.getInstance().getData(deptno);
	String dname = dto.getDname();
	String loc = dto.getLoc();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h1>회원정부 수정 양식</h1>
		<form action="update.jsp" method="post">
			<div>
				<label for="deptno">번호</label>
				<input type="text" id="deptno" name="deptno" value="<%=deptno %>" readonly />
			</div>
			<div>
				<label for="dname">이름</label>
				<input type="text" id="dname" name="dname" value="<%=dname %>" />
			</div>
			<div>
				<label for="loc">주소</label>
				<input type="text" id="loc" name="loc" value="<%=loc%>" />
			</div>
			<button type="submit">수정확인</button>
			<button type="reset">취소</button>
		</form>
	</div>
</body>
</html>
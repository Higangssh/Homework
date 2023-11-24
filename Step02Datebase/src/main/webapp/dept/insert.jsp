<%@page import="test.dept.dao.DeptDao"%>
<%@page import="test.dept.dto.DeptDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	int deptno = Integer.parseInt(request.getParameter("deptno")) ;
	String dname = request.getParameter("dname");
	String loc = request.getParameter("loc");
	DeptDto dto = new DeptDto();
	dto.setDeptno(deptno);
	dto.setDname(dname);
	dto.setLoc(loc);
	DeptDao dao = DeptDao.getInstance();
	boolean isSuccess = dao.insert(dto);
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
			<script>
				alert("수정성공")
				location.href="${pageContext.request.contextPath}/dept/list.jsp";
			</script>
		<%}else{ %>
			<p>
				회원정보 추가 실패!
				<a href="insertform.jsp">다시입력</a>
			<%} %>
			</p>	
</body>
</html>
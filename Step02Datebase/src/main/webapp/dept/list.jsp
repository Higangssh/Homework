<%@page import="test.dept.dao.DeptDao"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="test.dept.dto.DeptDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	DeptDao dao = DeptDao.getInstance();
 	List<DeptDto> list = dao.getList();
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<body>
	<div class="container">
		<h1>회원 목록입니다</h1>
		<a href="${pageContext.request.contextPath}/dept/insertform.jsp">회원추가</a>
		<a href="${pageContext.request.contextPath}/dept/deleteform">삭제</a>
		<table border="1">
			<thead>
				<tr>
					<th>부서번호</th>
					<th>부서이름</th>
					<th>위치</th>
					<th>수정</th>
				</tr>
			</thead>
			<tbody>		
				<% for(DeptDto tmp :list){%>
				<tr>
				<td><%=tmp.getDeptno()%></td>
				<td><%=tmp.getDname()%></td>
				<td><%=tmp.getLoc()%></td>
				<td>
					<a href="updateform.jsp?deptno=<%=tmp.getDeptno()%>">수정</a>
				</td>	
				</tr>	
				<%}%>	
			</tbody>
		</table>
</body>
</html>
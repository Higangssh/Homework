<%@page import="test.dept.dao.DeptDao"%>
<%@page import="test.dept.dto.DeptDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	int deptno = Integer.parseInt(request.getParameter("deptno"));
	String dname = request.getParameter("dname");
	String loc = request.getParameter("loc");
	DeptDto dto = new DeptDto();
	dto.setDeptno(deptno);
	dto.setDname(dname);
	dto.setLoc(loc);
	boolean isSuccess = DeptDao.getInstance().update(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<%if(isSuccess){ %>
			<script>
			alert("성공"+<%=deptno%>+ "번 회원번호가 변경되었습니다.")
			//location 객체를 이용해서 회원목록 보기로 리다일렉트 시키기
			location.href="${pageContext.request.contextPath}/dept/list.jsp";
			</script>	
		<%}else{ %>
			<h1>알림</h1>
			<p>
				수정실패!
				<a href="updateform.jsp?deptno=<%=deptno%>">다시 수정하러가기</a>
			</p>
		<%}%>	
</body>
</html>
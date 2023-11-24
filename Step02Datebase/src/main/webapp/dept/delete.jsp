<%@page import="test.dept.dao.DeptDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int deptno = Integer.parseInt(request.getParameter("deptno"));
	DeptDao dao = DeptDao.getInstance();
	boolean isSuccess = dao.delete(deptno);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="containter">
		<%if(isSuccess){ %>	
		<script>
			alert("삭제 완료했습니다")
			location.href="${pageContext.request.contextPath}/dept/list.jsp";
		</script>
		<%}else{ %>
			<p>
				회원정보 추가 실패!
				<a href="insertform.jsp">다시입력</a>
			</p>	
		<%}%>
	</div>
</body>
</html>
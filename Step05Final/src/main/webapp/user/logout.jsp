<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
	//session.removeAttribute("id");
	//세션 초기화
	session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>로그아웃 되었습니다</p>
	<a href="${pageContext.request.contextPath}/index.jsp">인덱스로</a>
	<script>
		alert("로그 아웃");
		location.href="${pageContext.request.contextPath}"
	</script>
</body>
</html>
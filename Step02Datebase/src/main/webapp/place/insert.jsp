<%@page import="test.place.dao.PlaceDao"%>
<%@page import="test.place.dto.PlaceDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	//form 전송되는 회원의 이름과 주소를 읽어와서
	int num = Integer.parseInt(request.getParameter("num"));
	String name =request.getParameter("name");
	String addr =request.getParameter("addr");
	int score = Integer.parseInt(request.getParameter("score"));
	//Db에 저장하고
	PlaceDto dto =new PlaceDto();
	dto.setNum(num);
	dto.setName(name);
	dto.setAddr(addr);
	dto.setScore(score);
	
	PlaceDao dao = PlaceDao.getInstance();
	boolean isSuccess=dao.insert(dto);
	//응답한다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/insert.jsp</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1>알림</h1>
		<%if(isSuccess){ %>
			<p class ="alert alert-success">
				<strong><%=name%></strong> 님정보를 추가했습니다.
				<a class ="alert-link" href="${pageContext.request.contextPath}/place/list2.jsp">목록보기</a>
			</p>
		<%}else{ %>
			<p class="alert alert-danger">
				회원정보 추가 실패!
				<a class="alert-link" href="insertform.jsp">다시입력</a>
			<%} %>
			</p>
	</div>
</body>
</html>
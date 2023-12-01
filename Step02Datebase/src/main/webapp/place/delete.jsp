<%@page import="test.place.dto.PlaceDto"%>
<%@page import="test.place.dao.PlaceDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	request.setCharacterEncoding("utf-8");
	int num = Integer.parseInt(request.getParameter("num"));
	PlaceDto dto = PlaceDao.getInstance().getData(num);
	boolean isSuccess = PlaceDao.getInstance().delete(num);
	if(isSuccess){
		boolean isdel = PlaceDao.getInstance().insert2(dto);
	}
	
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body>
	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="" name="current"/>
	</jsp:include>
	<div class="container">
		<h1>알림</h1>
		<%if(isSuccess){ %>
			<p>
				<strong><%=num %></strong> 번 맛집 정보를 삭제 했습니다.
				<a href="list.jsp">돌아가기</a>
			</p>
			<p>
				<a href="deletedlist.jsp">제외된 맛집 리스트 보기</a>
			</p>
		<%}else{ %>
			<p>
				삭제실패!
				<a href="list.jsp">돌아가기</a>
			</p>
		<%}%>
	</div>
	<jsp:include page="/include/footer.jsp"></jsp:include>	
</body>
</html>
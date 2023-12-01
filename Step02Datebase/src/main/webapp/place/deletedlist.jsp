<%@page import="java.util.List"%>
<%@page import="test.place.dao.PlaceDao"%>
<%@page import="test.place.dto.PlaceDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	List<PlaceDto> list = PlaceDao.getInstance().getList2();
%>
<!DOCTYPE html>
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
		<h1>맛집 목록입니다</h1>
		<table class ="table table-striped">
			<colgroup>
				<col class="col-1"/>
				<col class="col-2"/>
				<col class="col-6"/>
				<col class="col-1"/>
				<col class="col-1"/>	
			<thead>
				<tr>
					<th>가게번호</th>
					<th>이름</th>
					<th>주소</th>
					<th>점수</th>
					<th>영구삭제</th>
				</tr>
			</thead>
			<tbody>		
				<% for(PlaceDto tmp :list){%>
				<tr>
				<td><%=tmp.getNum()%></td>
				<td><%=tmp.getName()%></td>
				<td><%=tmp.getAddr()%></td>
				<td><%=tmp.getScore() %></td>
				<td>
					<a href="forever.jsp?num=<%=tmp.getNum()%>">
						<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash3" viewBox="0 0 16 16">
  						<path d="M6.5 1h3a.5.5 0 0 1 .5.5v1H6v-1a.5.5 0 0 1 .5-.5M11 2.5v-1A1.5 1.5 0 0 0 9.5 0h-3A1.5 1.5 0 0 0 5 1.5v1H2.506a.58.58 0 0 0-.01 0H1.5a.5.5 0 0 0 0 1h.538l.853 10.66A2 2 0 0 0 4.885 16h6.23a2 2 0 0 0 1.994-1.84l.853-10.66h.538a.5.5 0 0 0 0-1h-.995a.59.59 0 0 0-.01 0zm1.958 1-.846 10.58a1 1 0 0 1-.997.92h-6.23a1 1 0 0 1-.997-.92L3.042 3.5zm-7.487 1a.5.5 0 0 1 .528.47l.5 8.5a.5.5 0 0 1-.998.06L5 5.03a.5.5 0 0 1 .47-.53Zm5.058 0a.5.5 0 0 1 .47.53l-.5 8.5a.5.5 0 1 1-.998-.06l.5-8.5a.5.5 0 0 1 .528-.47ZM8 4.5a.5.5 0 0 1 .5.5v8.5a.5.5 0 0 1-1 0V5a.5.5 0 0 1 .5-.5"/>
  						</svg>
  						<span class="visually-hidden">삭제</span>
  					</a>
				</td>
				<%}%>	
			</tbody>
		</table>
	</div>
	<jsp:include page="/include/footer.jsp"></jsp:include>
</body>
</html>
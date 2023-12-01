<%@page import="test.place.dao.PlaceDao"%>
<%@page import="test.place.dto.PlaceDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	PlaceDto dto = PlaceDao.getInstance().getData(num);
	
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
	<nav class="navbar bg-primary navbar-expand-md" data-bs-theme="dark">
	  <div class="container">
	    <a class="navbar-brand" href="${pageContext.request.contextPath }/index.jsp">
	      <img src="https://getbootstrap.com/docs/5.3/assets/brand/bootstrap-logo.svg" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
	      Acorn
	    </a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"  
	    		data-bs-target="#navbarText">
	     		<span class="navbar-toggler-icon"></span>
	   	</button>
	   	<%
	   		//어느 페이지에 포함되었는지 정보를 얻어오기
	   		String current=request.getParameter("current"); // "index" or "member" or "guest"
	   	%>
	    <div class="collapse navbar-collapse" id="navbarText">
		   	<ul class="navbar-nav me-auto">
	        	<li class="nav-item">
	          		<a class="nav-link active" href="${pageContext.request.contextPath }/member/list2.jsp">회원목록</a>
	        	</li>
	        	<li class="nav-item">
	          		<a class="nav-link active" href="${pageContext.request.contextPath }/guest/list.jsp">방명록</a>
	        	</li>
	      	</ul>
	      	<form class="d-flex">
		        <input class="form-control me-2" type="search" placeholder="Search" >
		        <button class="btn btn-info" type="submit">Search</button>
	      	</form>
	      	<span class="navbar-text ms-2">
	      		Made by Son
	      	</span>
	    </div>
	  </div>
	</nav>	
	<div class="container">
		<nav>
			<ol class="breadcrumb">
				<li class="breadcrumb-item"><a href="../index.jsp">Home</a></li>
				<li class="breadcrumb-item"><a href="list2.jsp">회원목록</a></li>
				<li class="breadcrumb-item active">회원수정</li>
			</ol>
		</nav>
		<h1>회원정부 수정 양식</h1>
		<form action="update.jsp" method="post">
			<div class="mb-2">
				<label class="form-label" for="num">번호</label>
				<input class="form-control" type="text" id="num" name="num" value="<%=dto.getNum()%>" readonly />
				<div class="form-text">본인의 번호을 입력하세요!</div>
			</div>
			<div class="mb-2">
				<label class="form-label" for="name">이름</label>
				<input class="form-control"  type="text" id="name" name="name" value="<%=dto.getName() %>" />
				<div class="form-text">본인의 이름을 입력하세요!</div>
			</div>
			<div class="mb-2">
				<label class="form-label" for="addr">주소</label>
				<input class="form-control" type="text" id="addr" name="addr" value="<%=dto.getAddr() %>" />
				<div class="form-text">본인의 주소를 입력하세요!</div>
			</div>
				<div class="mb-2">
				<label class="form-label" for="score">점수</label>
				<input class="form-control" type="text" id="score" name="score" value="<%=dto.getScore() %>" />
				<div class="form-text">본인의 주소를 입력하세요!</div>
			</div>
			<button class="btn btn-outline-primary" type="submit">수정확인</button>
			<button class="btn btn-outline-danger" type="reset">취소</button>
		</form>
	</div>
	<jsp:include page="/include/footer.jsp"></jsp:include>
</body>
</html>
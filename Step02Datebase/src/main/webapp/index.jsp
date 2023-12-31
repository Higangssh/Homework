<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body>
	<%--
		/include/navbar.jsp 포함시키기
		
		피 포함되는 jsp 페이지에 파라미터를 전달 할 수 있다.
		
		아래 코드는 current 라는 파라미터 명으로 index 라는 문자열을 전달하는 것이다.
		
		따라서 navbar.jsp 페이지에서는 해당 문자열을 아래와 같이 추출 할 수 있다.
		String result = request.getparmeter("current");//"index"
	 --%>
	<jsp:include page="/include/navbar.jsp">
		<jsp:param value="index" name="current"/>
	</jsp:include>
	<div class="container">
		<h1>인덱스 페이지 입니다</h1>
		<div id="carouselExample" class="carousel slide mt-2">
		  <div class="carousel-inner">
		    <div class="carousel-item active">
		      <img src="images/top01.jpg" class="d-block w-100" alt="...">
		    </div>
		    <div class="carousel-item">
		      <img src="images/top01.jpg" class="d-block w-100" alt="...">
		    </div>
		    <div class="carousel-item">
		      <img src="images/top01.jpg" class="d-block w-100" alt="...">
		    </div>
		  </div>
		  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
		    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Previous</span>
		  </button>
		  <button class="carousel-control-next " type="button" data-bs-target="#carouselExample" data-bs-slide="next">
		    <span class="carousel-control-next-icon" aria-hidden="true"></span>
		    <span class="visually-hidden">Next</span>
		  </button>
		</div>
		<ul>
			<li><a href="test.jsp">Connection 객체 잘 얻어오는지 확인하기</a></li>
			<li><a href="${pageContext.request.contextPath}/member/list.jsp">회원목록보기</a></li>
			<li><a href="${pageContext.request.contextPath}/member/list2.jsp">회원목록보기2</a></li>
			<li><a href="${pageContext.request.contextPath}/dept/list.jsp">dept 목록보기</a></li>
			<li><a href="${pageContext.request.contextPath}/guest/list.jsp">방명록목록보기</a>
			<li><a href="${pageContext.request.contextPath}/place/list.jsp"]>맛집목록보기</a>
		</ul>
	<%-- 
	
		webapp/include/navbar.jsp 페이지에게 이부부만 응답하도록 하자 
		page = "경로"
		
		여기서 경로는 client 가 요청하는 경로가 아니기 때문에 context path 를 출력 x
		page = "/" webapp 폴더를 가리킨다
	--%>
	<jsp:include page="/include/footer.jsp"></jsp:include>
</body>
</html>
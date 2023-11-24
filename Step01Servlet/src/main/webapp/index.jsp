<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/index.jsp</title>
</head>
<body>
	<div class="container">
		<h1>인덱스 페이지 입니다</h1>
		<p> 컨텍스트 경로 :<strong>${pageContext.request.contextPath}</strong></p>
		<ul>
			<li><a href="${pageContext.request.contextPath}/friends">친구 목록보기</a></li>
			<li><a href="/Step01Servlet/friendslist">친구 목록보기</a></li>
			<li><a href="${pageContext.request.contextPath}/member/list">맴버 목록보기</a></li>
			<li><a href="${pageContext.request.contextPath}/friend/friendlist.jsp">친구 목록보기</a></li>
			<li><a href="${pageContext.request.contextPath}/member/list.jsp">회원 목록보기</a></li>
		</ul>
		<form action="${pageContext.request.contextPath}/send" method ="get">
			<input type="text" name="msg" placeholder="서버에 할말 입력 ...">
			<button type="submit">전송</button>	
		</form>
		<br/>
		
		<form action="${pageContext.request.contextPath}/send2" method ="post">
			<input type="text" name="msg" placeholder="서버에 할말 입력 ...">
			<button type="submit">전송</button>	
		</form>
		<br/>
		<form action="${pageContext.request.contextPath}/send.jsp" method ="post">
			<input type="text" name="msg" placeholder="서버에 할말 입력 ...">
			<button type="submit">전송</button>
		</form>;
		<p>링크를 눌러도 Get 방식 전송파마미터를 전달할 수있다</p>
		<p>아래의 링크를 눌러 보세요</p>
		<ul>
			<li><a href="shop/buy.jsp?num=1&amount=2">1번상품 2개 구입하기</a></li>
			<li><a href="shop/buy.jsp?num=5&amount=3" target="_blank">5번상품 3개 구입하기</a></li>
		</ul>		
	</div>
</body>
</html>
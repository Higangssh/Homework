<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String nick = request.getParameter("nick");
	//HttpSession 객체의 .setAttribute() 메소드를 이용해서 저장하기 (session scope 에 저장)
	session.setAttribute("nick", nick);
	//어떤 요청도 하지 않았을때 세션 유지 시간 설정(초단위)
	session.setMaxInactiveInterval(30);
	/*
		HttpSession 객체의 SetAttribute() 메소드를 이용해서 담은 데이터는
		1. 강제 삭제
		2. 웹브라우저 종료
		3. 웹 닫지 않았지만 30분(조절가능) 동안 새로운 요청을 한번도 하지 않으면 지워진다.
				
	*/
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/test/save.jsp</title>
</head>
<body>
	<p><strong><%=nick %></strong>이라는 닉네임을 기억하겠습니다</p>
	<p>30분동안 아무요청을 하지 않거나 웹을 닫으면 자동 삭제 됩니다.</p>
	<a href="../index.jsp">인덱스로 이동하기</a>
	
</body>
</html>
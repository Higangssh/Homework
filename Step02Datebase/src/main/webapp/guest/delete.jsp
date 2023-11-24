<%@page import="test.guest.dao.GuestDao"%>
<%@page import="test.guest.dto.GuestDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num = Integer.parseInt(request.getParameter("num"));
	String pwd = request.getParameter("pwd");
	GuestDto dto =new GuestDto();
	dto.setNum(num);
	dto.setPwd(pwd);
	boolean isSuccess= GuestDao.getInstance().delete(dto);
	if(isSuccess){
		//context path 읽어오기
		String cPath =request.getContextPath();
		
		/*
			jsp 기본객체인 HttpSevletResponse 객체의 sendRedirect() 메소드를 이용해서 응답하기
			
			이 응답은 메소드를 호출하면서 전달한 경로로 웹브라우저에게 다시 요청 하라는 응답이다.
			
			이런 응답을 받은 웹브라우저는 해당 경로로 요청을 다시 하게 된다.(페이지 이동)
		*/
		response.sendRedirect(cPath+"/guest/list.jsp");
	}
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
	
		alert("비밀번호가 일치하지 않습니다.");
		location.href("${pageContext.request.contextPath }/guest/list.jsp");
	</script>
</body>
</html>
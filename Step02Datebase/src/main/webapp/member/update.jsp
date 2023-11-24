<%@page import="test.member.dto.MemberDto"%>
<%@page import="test.member.dao.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	int num = Integer.parseInt(request.getParameter("num"));
	String name = request.getParameter("name");
	String addr = request.getParameter("addr");
	MemberDto dto = new MemberDto();
	dto.setNum(num);
	dto.setName(name);
	dto.setAddr(addr);
	boolean isSuccess =MemberDao.getInstance().update(dto);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
		<%if(isSuccess){ %>
			<script>
			alert("성공"+<%=num%>+ "번 회원번호가 변경되었습니다.")
			//location 객체를 이용해서 회원목록 보기로 리다일렉트 시키기
			location.href="${pageContext.request.contextPath}/member/list2.jsp";
			</script>	
		<%}else{ %>
			<h1>알림</h1>
			<p>
				수정실패!
				<a href="updateform.jsp?num=<%=num%>">다시 수정하러가기</a>
			</p>
		<%}%>	
</body>
</html>
<%@page import="test.main.Member"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="test.util.DbcpBean"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.ArrayList"%>
<%@page import="test.member.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//아래의 table 에 출력할 회원목록 얻어오기
	List<MemberDto> list = new ArrayList<>();
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	try{
		conn =new DbcpBean().getConn();
	
		list = new Member().getList();
	}catch(Exception e){
		
	}
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/list.jsp</title>
</head>
<body>
	<div class="container">
		<h1>회원 목록입니다</h1>
		<table border="1">
			<thead>
				<th>번호</th>
				<th>이름</th>
				<th>주소</th>
			</thead>
			<tbody>		
				<% for(MemberDto tmp :list){%>
				<tr>
				<td><%=tmp.getNum()%></td>
				<td><%=tmp.getName()%></td>
				<td><%=tmp.getAddr()%></td>
				</tr>	
				<%}%>	
			</tbody>
		</table>
	</div>
</body>
</html>
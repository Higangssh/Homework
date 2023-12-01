<%@page import="test.user.dto.UserDto"%>
<%@page import="java.util.List"%>
<%@page import="test.user.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%
	String id = request.getParameter("id");
	UserDto dto = UserDao.getInstance().getData(id);
	boolean canUse = dto == null ? true : false;
%>
{"canUse":<%=canUse %>}

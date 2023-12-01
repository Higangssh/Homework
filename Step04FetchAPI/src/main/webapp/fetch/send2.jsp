<%@ page language="java" contentType="application/json; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String msg = request.getParameter("msg");
	System.out.println("msg:"+msg);
%>
{"isSuccess":true,"toCLient":"메세지 잘받았어 클리어언트야"}
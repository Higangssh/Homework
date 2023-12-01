<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/fetch/test03.jsp</title>
</head>
<body>
	<button id="getBtn">회원정보 가져오기</button>
	<p>번호:<strong id= "num"></strong></p>
	<p>이름:<strong id= "name"></strong></p>
	<p>주소:<strong id= "addr"></strong></p>
	<button id="getBtn2">친구 목록 가저오기</button>
	<ul id="frined">
	
	</ul>
	<script>
		document.querySelector("#getBtn2").addEventListener("click",()=>{
			fetch("get_friend.jsp")
			.then(res=>res.json())
			.then(data=>{
					data.forEach(item=>{
					const li ="<li>"+item+"<li>"
					document.querySelector("#friend").insertAdjacentHTML("beforeend",li);
				})
			})
			
		})
		document.querySelector("#getBtn").addEventListener("click",()=>{
			fetch("get_member.jsp")
			.then(res=>res.json())
			.then(data=>{	
				document.querySelector("#num").innerText = data.num 
				document.querySelector("#name").innerText = data.name 
				document.querySelector("#addr").innerText = data.addr 
			})
			
		})
	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<input type="text" id="msg" placeholder="메세지 입력..." />
	<button id="sendBtn">전송</button>
	<button id="sendBtn2">전송2</button>
	<button id="sendBtn3">전송3</button>
	<script>
		document.querySelector("#sendBtn2").addEventListener("click",()=>{
			const msg= document.querySelector("#msg").value;
		
			fetch("send2.jsp?msg="+msg)
			.then(res=>res.json())
			.then((data)=>{
				console.log(data);
			})
		})
				document.querySelector("#sendBtn3").addEventListener("click",()=>{
			const msg= document.querySelector("#msg").value;
		
			fetch("send3.jsp?msg="+msg)
			.then(res=>res.json())
			.then((data)=>{
				console.log(data);
			})
			.catch(errMsg=>{
				console.log(errMsg);
			})
		})
		
	</script>
</body>
</html>
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
	<div class="container">
		<h1>폼 유효성 검증 style 테스트</h1>
		<form action="signup.jsp" method="post">
			<div>
				<label class="form-label" for="id">아이디 </label>
				<input class="form-control is-valid" type="text" name ="id" id="id" />
				<div class="valid-feedback">잘 입력 했군!</div>
			</div>
			<div>
				<label class="form-lable" for="email">이메일</label>
				<input class="form-control is-invalid" type="email" name ="email" id="email" />
				<div class="invalid-feedback">이메일 형식 맞춰라</div>
				<div class="valid-feedback">잘 입력 했군!</div>
			</div>
			<button class="btn btn-primary" type="submit" disabled>가입</button>
		</form>
	</div>
	<script>
		document.querySelector("#nick").addEventListener("input", ()=>{
			//현재까지 입력한 닉네임을 읽어온다.
			let inputNick= document.querySelector("#nick").value
			//fetch 함수를 이용해서 get 방식으로 입력한 닉네임을 보내고 사용가능 여부를 json 으로 응답받는다.
			fetch("${pageContext.request.contextPath}/fetch/check_nick.jsp?nick="+inputNick)
			.then(res => res.json())
			.then(data =>{
				
			});
		})
	</script>
</body>
</html>












<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/fetch/form_validation3</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<h1>폼 유효성 검증 style 테스트</h1>
		<form action="signup.jsp" method="post">
			<div>
				<label class="form-label" for="nick">닉</label>
				<input class="form-control is-valid" type="text" name ="nick" id="nick" />
				<div class="form-text">영문자 대소문자만 가능 합니다</div>
				<div class="invalid-feedback">이미 존재하는 닉네임 입니다!</div>
				<div class="valid-feedback"> 사용가능합니다 </div>
			</div>
			<div>
				<label for="pwd">비밀번호</label>
				<input type="text" class="form-control is-invalid" name="pwd" id="pwd" />
				<div class="invalid-feedback">비밀 번호를 확인하세요</div>
				<div class="valid-feedback"> 비밀 번호가 같습니다 </div>
			</div>
			<div>
				<label for="pwd2">비밀번호확인</label>
				<input type="text" class="form-control" name="pwd2" id="pwd2" />
			</div>
			<br>
			<button class="btn btn-primary" type="submit" id="btn" disabled>가입</button>
		</form>
	</div>
		<script>
			//아이디 유효성 여부
			let isNickValid=false;
			//비밀번호 유효성 여부
			let isPwdValid=false;
			document.querySelector("#nick").addEventListener("input", ()=>{
				//현재까지 입력한 닉네임을 읽어온다.
				let inputNick= document.querySelector("#nick").value
				const reg = /^[a-zA-Z]+$/;
				let isPass = reg.test(inputNick)
				//fetch 함수를 이용해서 get 방식으로 입력한 닉네임을 보내고 사용가능 여부를 json 으로 응답받는다.
				console.log(isPass)
				if(!isPass){
					isNickValid=false;
					document.querySelector("#nick").classList.remove("is-valid");
					document.querySelector("#nick").classList.add("is-invalid")
					valid();
					return;
				}
				fetch("${pageContext.request.contextPath}/fetch/check_nick.jsp?nick="+inputNick)
				.then(res => res.json())
				.then(data =>{
					console.log(data.id);
					if(data.id.includes(inputNick)){
						document.querySelector("#nick").classList.remove("is-valid");
						document.querySelector("#nick").classList.add("is-invalid")
						isNickValid=false;
					}else{
						document.querySelector("#nick").classList.remove("is-invalid");
						document.querySelector("#nick").classList.add("is-valid")
						isNickValid=true;
					}
					valid();
				});
				
				
			})
			const checkPwd = ()=>{
				let pwd = document.querySelector("#pwd").value;
				let pwd2 = document.querySelector("#pwd2").value;
				if(pwd === pwd2){
					document.querySelector("#pwd").classList.remove("is-invalid");
					document.querySelector("#pwd").classList.add("is-valid")
					isPwdValid=true;
				}else{
					document.querySelector("#pwd").classList.remove("is-valid");
					document.querySelector("#pwd").classList.add("is-invalid");
					isPwdValid=false;
				}
				valid();
			}
			
			document.querySelector("#pwd").addEventListener("input", checkPwd);
			document.querySelector("#pwd2").addEventListener("input",checkPwd);
			const btn = document.querySelector("[type='submit']");
			const valid = ()=>{
				if(isNickValid === true && isPwdValid ===true ){
					 btn.removeAttribute("disabled");
				}else{
					 btn.setAttribute("disabled","");
				}
				
			}

		</script>
</body>
</html>












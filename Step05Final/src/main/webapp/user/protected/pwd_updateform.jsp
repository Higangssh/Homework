<%@page import="test.user.dao.UserDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div>
		<form action="pwd_update.jsp" method="post" id="form">
			<div>
		        <label for="pwd">기존 비밀번호</label>
        		<input type="password" id="pwd" name="pwd" />
        	</div>	
        		<label for="pwd">새 비밀번호</label>
        		<input type="password" id="pwd2" name="pwd2" />
			<div>
        		<label for="pwd">새 비밀번호 확인</label>
        		<input type="password" id="pwd3" name="pwd3" />
        	</div>
        		<button type="submit">제출</button>
        		<button type="reset">돌아가기</button>    		
		</form>
		<script>
			document.querySelector("#form").addEventListener("submit", function(e) {
				const pwd1 = document.querySelector("#pwd2").value;
				const pwd2 = document.querySelector("#pwd3").value;
				if(pwd1 !== pwd2){
					alert("새 비밀번호 입력란 값이 다릅니다")
					e.preventDefault();
				}
 			});
		</script>
	</div>
</body>
</html>
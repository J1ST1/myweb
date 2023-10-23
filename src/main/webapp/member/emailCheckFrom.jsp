<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>emailCheckForm.jsp</title>
</head>
<body>

	<div style="text-align : center">
		<h3> 이메일 중복확인 </h3>
		<form action="emailCheckProc.jsp" onsubmit="return blankCheck()">
		이메일 : <input type="text" name="email" id="email" maxlength="50" autofocus>
			   <input type="submit" name="중복확인">
		</form>
	</div>
	
	<script>
		function blankCheck(){ //이메일 유효성 검사
			let email = document.getElementById("email").value;
			email = email.trim();
			if(email.length<10 || email.length>20){
				alert("이메일 5~10글자 이내 입력해 주세요");
				document.getElementById("email").focus();
				return false;
			}//if end
			return true;
		}//blankCheck() end
	</script>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP</title>

</head>
<body>

	<form>
		<label>아이디</label><input type="text" id="user_id">
		<label>비밀번호</label><input type="password" id="user_pw">
		<button type="button" id="login">로그인</button>
	</form>

<script src="/project/resources/js/jquery.min.js"></script>
<script src="/project/resources/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$("#login").click(function(){
		/* alert("버튼누름"); */
		var loginData = {
			user_id: $("#user_id").val(),
			user_pw: $("#user_pw").val()
		};
		console.log(loginData);
		login(loginData);
	});
	
	function login(loginData){
		$.ajax({
			url : "/project/login/loginUser",
			type : "POST",
			contentType : "application/json;charset=UTF-8",
			data : JSON.stringify(loginData),
			dataType : "json",
			success : function(data) {
				alert("로그인 성공");
			},
			error : function(data) {
				alert("로그인 실패");
			}
		});
	}
</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp"%>
<script type="text/javascript">
</script>
<script>
$(document).ready(function(){
	alert("ready test");

	$("#userid").mouseover(function(){
		alert("마우스오버");
		var i="";
		
	});
});

</script>
</head>
<body>
	<%@ include file="../include/menu.jsp"%>
	<div class="container" style="border: 1px solid;">
		<h2>${message}</h2>
		<hr>
		<form name="signUp_from" method="post">
			<div class="form-group">
				<label for="userid">*아이디:</label>
				<!-- <form name="idCForm" method="post"> -->
				<input type="text" class="form-control" id="userid"
				 name="userid">
				 <!-- </form> -->
				 <a id="idC_result" name="idC_result"></a>
			</div>
			<div class="form-group">
				<label for="passwd">*비밀번호:</label>
				<input type="password" class="form-control" id="passwd"
				 name="passwd">
			</div>
			<div class="form-group">
				<label for="passwdC">*비밀번호 확인:</label>
				<input type="password" class="form-control" id="passwdC"
				 name="passwdC">
			</div>
			<div class="form-group">
				<label for="name">*이름:</label>
				<input type="text" class="form-control" id="name"
				 name="name">
			</div>
			<div class="form-group">
				<label for="nickname">*닉네임:</label>
				<input type="text" class="form-control" id="nickname"
				 name="nickname">
			</div>
			<div class="form-group">
				<label for="email">이메일:</label>
				<input type="text" class="form-control" id="email"
				 name="email">
			</div>
			<div class="form-group">
				<label for="hp">전화번호:</label>
				<input type="text" class="form-control" id="hp"
				 name="hp">
			</div>
			<div class="form-group">
				<label for="addr">주소:</label>
				<input type="text" class="form-control" id="addr"
				 name="addr">
			</div>
			<input type="button" value="회원가입" id="btn_signUp" name="btn_signUp"> <a style="color: red">*는 필수입력입니다</a>
		</form>
		<hr>
		<div>
			| <a href="${path}/member/findID.do">아이디찾기</a> | <a
				href="${path}/member/findPW.do">비밀번호 찾기</a> |
		</div>
	</div>
	<%@ include file="../include/footer.jsp"%>
</body>
</html>
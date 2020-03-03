<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp"%>
<script>
/* 실시간 중복확인 코드 보류
$(function(){
	var userid=$("#userid").val();
	
	if(userid!=""){
		$.ajax({
			type: "post",
			url: "${path}/member/idC.do",
			data: userid,
			success: function(result){
				$("#idC_result").text(result);
			}
		});
		document.idCFrom.action="${path}/member/idC.do";
		document.idCFrom.submit();
	}	
}); */

/* $(function(){
	$("#btn_signUp").click(function(){
		var userid=$("#userid").val();
		var passwd=$("#passwd").val();
		var passwdC=$("#passwdC").val();
		var name=$("#name").val();
		var nickname=$("#nickname").val();
		var email=$("#email").val();
		var hp=$("#hp").val();
		var addr=$("#addr").val();

		if(userid==""){
			alert("아이디를 입력해주세요.");
			$("#userid").focus();
			return;
		}
		if(passwd==""){
			alert("비밀번호를 입력해주세요.");
			$("#passwd").focus();
			return;
		}
		if(passwdC==""){
			alert("비밀번호확인을 입력해주세요.");
			$("#passwdC").focus();
			return;
		}
		if(name==""){
			alert("이름을 입력해주세요.");
			$("#name").focus();
			return;
		}
		if(nickname==""){
			alert("닉네임을 입력해주세요.");
			$("#nickname").focus();
			return;
		}
		document.signUp_form.action="${path}/member/signUp.do";
		document.signUp_form.submit();
		
	
	});
});
 */

</script>
</head>
<body>
	<%-- <%@ include file="../include/menu.jsp"%>
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
	</div> --%>
</body>
</html>
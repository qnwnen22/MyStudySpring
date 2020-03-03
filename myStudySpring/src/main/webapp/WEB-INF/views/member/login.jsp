<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../include/header.jsp"%>
<script>
$(function(){
	$("#btnLogin").click(function(){
		var userid=$("#userid").val(); //태그의 value 속성값
		var passwd=$("#passwd").val();
		if(userid==""){
			alert("아이디를 입력하세요.");
			$("#userid").focus(); //입력 포커스 이동
			return; //함수 종료
		}
		if(passwd==""){
			alert("비밀번호를 입력하세요.");
			$("#passwd").focus();
			return;
		}
		//폼 데이터를 서버로 제출
		document.form1.action="${path}/member/login_check.do";
		document.form1.submit();
	});
});
</script>
</head>
<body>
	<%@ include file="../include/menu.jsp"%>

	<div class="container" style="border: 1px solid">
		<h2>${message}</h2>
		<form name="form1" method="post">
			<div class="form-group">
				<label for="usr">ID:</label>
				<input type="text" class="form-control"
				id="userid" name="userid">
			</div>
			<div class="form-group">
				<label for="pwd">Password:</label>
				<input type="password" class="form-control"
				id="passwd" name="passwd">
			</div>
			<div class="form-group">
				<input type="button" id="btnLogin" value="로그인">
			</div>			
		</form>
			<!-- 로그인 체크 -->
			<c:if test="${param.message == 'nologin' }">
				<div style="color:red;">
					로그인 하신 후 사용하세요.
				</div>				
			</c:if>
			<c:if test="${message == 'error' }">
				<div style="color:red;">
					아이디 또는 비밀번호가 일치하지 않습니다.
				</div>
			</c:if>
			<c:if test="${message == 'logout' }">
				<div style="color:blue;">
					로그아웃 처리되었습니다.
				</div>
			</c:if>
			<hr>
			<div>
				<a href="${path}/member/findID.do">아이디찾기</a>
				|
				<a href="${path}/member/findPW.do">비밀번호 찾기</a>
			</div>
	</div>
</body>
</html>
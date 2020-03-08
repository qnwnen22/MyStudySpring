<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- views/include/menu.jsp -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="jumbotron">
		<div class="container text-center">
			<h1>My Study Spring</h1>
			<p>기능구현 웹페이지</p>
		</div>
	</div>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Logo</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li class="active"><a href="${path}">Main</a></li>
					<li><a href="#">상품관리 메뉴</a></li>
					<li><a href="#">게시판 컨텐츠</a></li>
					<li><a href="#">API컨텐츠</a></li>
					<li><c:if test="${sessionScope.admin_userid != null}">
							<a href="${path}/shop/product/write.do">상품등록</a> 
			</c:if></li>
					<li><c:if test="${sessionScope.userid != null}">
							<a href="${path}/shop/cart/list.do">장바구니</a> 
			</c:if></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<c:choose>
						<c:when test="${sessionScope.userid == null }">
							<li><a href="${path}/member/login.do">
							<span class="glyphicon glyphicon-log-in"></span> 로그인</a></li>
							<li><a href="${path}/member/signUp.do">
							<span class="glyphicon glyphicon-user"></span> 회원가입</a></li>
						</c:when>
						<c:otherwise>
							<li><a><span class="glyphicon glyphicon-user"></span> ${sessionScope.nickname}</a></li>
							<li><a href="${path}/shop/cart/list.do">
							<span class="glyphicon glyphicon-shopping-cart"></span> 장바구니</a></li>
							<li><a href="${path}/member/logout.do">
							<span class="glyphicon glyphicon-log-out"></span> 로그아웃</a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
	</nav>
<hr>
<style>
.navbar {
	margin-bottom: 50px;
	border-radius: 0;
}

/* Remove the jumbotron's default bottom margin */
.jumbotron {
	margin-bottom: 0;
}

/* Add a gray background color and some padding to the footer */
footer {
	background-color: #f2f2f2;
	padding: 25px;
}
</style>
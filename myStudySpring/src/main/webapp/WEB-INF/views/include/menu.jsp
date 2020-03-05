<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- views/include/menu.jsp -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<a href="${path}"><img alt="Images.." src="#"></a>
|
<a href="${path}">Main</a>
|
<a href="#">상품관리 메뉴</a>
|
<a href="#">게시판 컨텐츠</a>
|
<a href="#">API컨텐츠</a>
|
<c:if test="${sessionScope.admin_userid != null}">
	<a href="${path}/shop/product/write.do">상품등록</a> | 
</c:if>
<c:if test="${sessionScope.userid != null}">
	<a href="${path}/shop/cart/list.do">장바구니</a> | 
</c:if>

<div style="display: inline; float: right;">
	<c:choose>
		<c:when test="${sessionScope.userid == null }">
	| <a href="${path}/member/login.do">로그인</a> | <a
				href="${path}/member/signUp.do">회원가입</a> |
	</c:when>
		<c:otherwise>
			${sessionScope.nickname}님이 로그인중입니다.
			<a href="${path}/member/logout.do">로그아웃</a>
		</c:otherwise>
	</c:choose>
</div>


<hr>

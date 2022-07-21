<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- header 시작 -->
<div id="main_logo">
	<h1 class="align-center">
		<a href="${pageContext.request.contextPath}/main/main.do">PERFORMANCE</a>
	</h1>
</div>
<div id="main_nav">
	<ul>
		<c:if test="${!empty user_num && user_auth == 3}">
		<li>
			<a href="${pageContext.request.contextPath}/member/memberList.do">회원관리</a>
		</li>
		</c:if>
		
		<c:if test="${!empty user_num && user_auth == 2}">
		<li>
			<a href="${pageContext.request.contextPath}/member/myPage.do">MY페이지</a>
		</li>
		</c:if>
		
		<c:if test="${!empty user_num && !empty user_photo}">
		<li class="menu-profile">
			<img src="${pageContext.request.contextPath}/upload/${user_photo}" width="25" height="25" class="my-photo">
		</li>
		</c:if>
		
		<c:if test="${!empty user_num && empty user_photo}">
		<li class="menu-profile">
			<img src="${pageContext.request.contextPath}/images/face.png" width="25" height="25" class="my-photo">
		</li>
		</c:if>
		
		<c:if test="${!empty user_num}">
		<li class="menu-logout">
			[<span>${user_id}</span>]
			<a href="${pageContext.request.contextPath}/member/logout.do">로그아웃</a>
		</li>
		</c:if>
		
		<c:if test="${empty user_num}">
		<li>
			<a href="${pageContext.request.contextPath}/member/registerUserForm.do">회원가입</a>
		</li>
		<li>
			<a href="${pageContext.request.contextPath}/member/loginForm.do">로그인</a>
		</li>
		</c:if>
	</ul>
</div>
<hr size="1" noshade="noshade" width="100%">
<nav class="second_nav">
	<ul>
		<li class="dropdown">
			<div class="dropdown-menu">RESEVE</div>
			<div class="dropdown-content">
				<a href="#">공연 예매하기</a>
				<a href="${pageContext.request.contextPath }/show/showInsertForm.do">공연 등록하기</a>
				<a href="#">예매 취소</a>
			</div>
		</li>
		<li class="dropdown">
			<div class="dropdown-menu">COMMUNITY</div>
		</li>
		<li class="dropdown">
			<div class="dropdown-menu">FAQ</div>
		</li>
	</ul>
</nav>
<!-- header 끝 -->

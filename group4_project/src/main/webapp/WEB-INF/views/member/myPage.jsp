<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MY페이지</title>
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/mypage.css" type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.6.0.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/js/member.js"></script>
</head>

<body>
	<jsp:include page="/WEB-INF/views/common/header.jsp"/>  
	<div class="content-box">
		<div class="menu-box"> 
			<div class="menu-title">마이페이지</div>
			<div style="height:490px;">
			<ul class="menu">
				<li><a class="active" href="${pageContext.request.contextPath}/member/myPage.do">마이 홈</a></li>
				<li><a href="${pageContext.request.contextPath}/member/modifyUserForm.do">회원정보 수정</a></li>
				<li><a href="${pageContext.request.contextPath}/member/reservationhistoryForm.do">예매/등록 정보</a></li>
			</ul>
			</div>
			<a class="delete" href="${pageContext.request.contextPath}/member/deleteUserForm.do">회원탈퇴</a>
		</div>		  
		
		<div class="profile-box">
			<div class="profile-title">내 정보</div>
			<div class="profile-name">
				<span id="name">${member.me_name}</span> 
				<c:if test="${member.me_path == 1}">[<span id="path">일반 회원</span>]</c:if>
				<c:if test="${member.me_path == 2}">[<span id="path">공연자</span>]</c:if>
			</div>
			<div style="width: 400px"><hr></div>
			<div class="profile-detail">
				 <label>생년월일</label><span>${member.me_agecode}</span><br>
				 <label>전화번호</label><span>${member.me_phone}</span><br>
				 <label>이메일</label><span>${member.me_email}</span><br>
				 <label>주소</label><span style="display:inline-block; width: 320px; text-align:left">${member.me_add1} ${member.me_add2} (${member.me_zipcode})</span>
			</div>
			
		</div>
	</div>
	<div style="margin: 50px 0 0;"><jsp:include page="/WEB-INF/views/common/footer.jsp"/></div>
</body>
</html>
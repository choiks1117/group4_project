<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글수정</title>
<style type="text/css">
li{
	margin:10px auto;
}
</style>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/board.css" type="text/css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/community.css" type="text/css">
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/community.js"></script>
</head>
<body class="boardBody">
<div class="page-main">
	<jsp:include page="/WEB-INF/views/common/header.jsp"/>
	<div class="content-main">
	
		<h4 style="margin: 0 0 20px 60px">- COMMUNITY 수정</h4>
		
		<form action="update.do" method="post"
		      enctype="multipart/form-data" id="write_form2">
			<input type="hidden" name="co_key" value="${comm.co_key}">
			
			<ul class="com_cc">
				<li>
					<label for="co_title2">제목</label>
					<input type="text" name="co_title" id="co_title"
					    value="${comm.co_title}" maxlength="50">
				</li>
				<li>
					<label for="co_write2">내용</label>
					<textarea rows="5" cols="30" name="co_write"
					   id="co_write">${comm.co_write}</textarea>
				</li>
			</ul> 
			<div class="align-center" style="margin-bottom:30px;">
				<input type="submit" value="수정">
				<input type="button" value="목록"
				         onclick="location.href='list.do'">
			</div>                      
		</form>
		
	</div>
</div>
</body>
</html>





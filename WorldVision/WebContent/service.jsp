<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="정보배">
<title>서비스준비중</title>
<script src="https://kit.fontawesome.com/9d91dfe9ed.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="${contextPath}/css/common.css">
<link rel="stylesheet" href="${contextPath}/css/service.css">
</head>
<body>
	<!-- wrap -->
	<div id="wrap">
		<!-- icon -->
		<p>
			<i class="fas fa-robot"></i>
		</p>
		<!-- //icon-->

		<!-- text -->
		<p class="textTop">
			서비스 <span>준비중</span> 입니다.
		</p>
		<p class="textBottom">
			이용에 불편을 드려 죄송합니다.<br> 보다 나은 서비스 제공을 위하여 페이지 준비중에 있습니다.<br>빠른 시일내에 준비하여 찾아뵙겠습니다.
		</p>
		<!--//text  -->

		<!-- btn -->
		<a href="${contextPath}/index.jsp" title="메인 홈페이지로 이동">월드비전 홈페이지 이동</a>
		<!-- //btn -->

	</div>
	<!-- //wrap -->
	
</body>
</html>
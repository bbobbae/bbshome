<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="정보배">
<title>가입완료</title>
<link rel="stylesheet" href="${contextPath}/css/common.css">
<link rel="stylesheet" href="${contextPath}/css/confirm.css">
<link rel="stylesheet" href="${contextPath}/css/mmenu-light.css">
<link rel="stylesheet" href="${contextPath}/css/mburger.css">

<script src="https://kit.fontawesome.com/9d91dfe9ed.js" crossorigin="anonymous"></script>
</head>
<body>

	<div id="my-page">
		<%@ include file="../header.jsp"%>
		<!-- contentWrap -->
		<div id="contentWrap">
			<h3 id="contentTitle">회원가입</h3>

			<!-- step -->
			<div id="step">
				<ul>
					<ul>
						<li class="step"><i class="fas fa-check"></i> <span>STEP 1</span> <i class="fas fa-chevron-right"></i></li>
						<li class="step"><i class="far fa-file-alt "></i> <span>STEP 2</span> <i class="fas fa-chevron-right"></i></li>
						<li><i class="fas fa-users point"></i> <span>STEP 3</span></li>
					</ul>
			</div>
			<!-- //step -->

			<!-- form -->
			<form>
				<div id="mainText">
					<span class="topText">가족이 되신것을</span> <span class="topText">진심으로 환영합니다.</span>
					<p>
						가입하신 아이디는 <span id="makeId">${conFirmID.id}</span> 입니다.
					</p>
				</div>

				<div id="mainContent">
					<div>
						후원금을 가장 가치있게<br>사용하는 이야기를<br>받아보시겠어요? <a href="${contextPath}/service.jsp">신청하기</a>
					</div>
					<div>
						어려움에 처한 이들의 삶을<br>바꾸는 일, 오늘 바로 시작해<br>보시겠어요? <a href="${contextPath}/mainSpt/supportPart.jsp">후원하기</a>
					</div>
				</div>
			</form>
			<!-- //form -->
		</div>
		<!-- //contentWrap -->
		<script src="${contextPath}/js/mmenu-light.js"></script>
		<script src="${contextPath}/js/hidemenu.js"></script>
		<%@ include file="../footer.jsp"%>
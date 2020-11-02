<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>"></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="정보배">
<title>마이 월드비전</title>
<link rel="stylesheet" href="${contextPath}/css/common.css">
<link rel="stylesheet" href="${contextPath}/css/myPwd.css">
<link rel="stylesheet" href="${contextPath}/css/mmenu-light.css">
<link rel="stylesheet" href="${contextPath}/css/mburger.css">
<script src="https://kit.fontawesome.com/9d91dfe9ed.js" crossorigin="anonymous"></script>

</head>
<body>
	<div id="my-page">
		<%@ include file="../header.jsp"%>
		<!-- contentWrap -->
		<div id="contentWrap">
			<h3 id="contentTitle">개인정보변경</h3>
			<div id="innerBox">
				<!-- form -->
				<form id="myWb" name="myInfo" action="/WorldVision/worldVision.jb?type=myPageForm" method="post">
					<p>
						고객님의 개인정보 보호를 위하여 비밀번호를 다시 한 번 확인합니다.<br>항상 비밀번호는 타인에게 노출되지 않도록 주의하세요.
					</p>
					<div id="ipBox">
						<span class="frTtl">아이디</span><span class="ipVelue">${loginUserInfo.id}</span><br> <span class="frTtl">비밀번호</span><input type="password" name="chkPasswd" class="ipVelue">
					</div>
					<input type="submit" value="확인" id="chkBtn" onclick="pwdChk();">
				</form>
				<!-- //form -->
			</div>

		</div>
		<!-- //contentWrap -->
		<script src="${contextPath}/js/mmenu-light.js"></script>
		<script src="${contextPath}/js/hidemenu.js"></script>

		<%@ include file="../footer.jsp"%>
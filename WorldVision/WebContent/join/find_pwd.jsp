<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>
<!DOCTYPE html>
<html lang="KO">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="정보배">
<title>비밀번호찾기</title>
<link rel="stylesheet" href="${contextPath}/css/common.css">
<link rel="stylesheet" href="${contextPath}/css/find_pwd.css">
<link rel="stylesheet" href="${contextPath}/css/mmenu-light.css">
<link rel="stylesheet" href="${contextPath}/css/mburger.css">

<script src="https://kit.fontawesome.com/9d91dfe9ed.js" crossorigin="anonymous"></script>
<script src="${contextPath}/js/find_pwd.js"></script>

</head>
<body>
	<div id="my-page">
		<%@ include file="../header.jsp"%>

		<div id="contentWrap">
			<h3 id="contentTitle">비밀번호찾기</h3>
			<div id="area">


				<form id="pwdSerch" name="pwdSerch">
					<!--headTab 영역-->
					<input type="radio" id="first" name="tab" checked> <input type="radio" id="second" name="tab">
					<section id="cover">
						<label for="first"><em class="show"></em> 휴대폰 번호</label> <label for="second"><em class="show"></em> 이메일 주소</label>
					</section>
					<!--//headTab 영역-->
					<!--pNum영역-->
					<div class="key" id="pNum">
						<ul>
							<li class="listId"><input type="text" id="phoneId1" class="fill" name="phoneId1" placeholder="아이디"></li>
							<li class="listName"><input type="text" id="phoneName1" class="fill" name="userName1" placeholder="이름"></li>
							<li class="listChange"><input type="text" class="fill" id="phoneNum1" name="phoneNum1" placeholder="(-)을 제외한 휴대폰 번호"> <input type="button" value="인증번호" onclick="numChk();" class="smBtn"></li>
							<li class="listCode" id="hideArea"><input type="text" id="verificationCode1" name="verificationCode1" placeholder="인증번호"> <input type="button" value="확인" class="smBtn" onclick="codeChk();"> <span id="timer" class="smTxt"></span>
								<p id="ViewTimer" class="smTxt2"></p></li>
							<li><input type="reset" class="btnBox btn1" value="취소" onclick="rsBtn();"> <input type="button" class="btnBox btn2" value="확인" onclick="numCkBtn1();"></li>
						</ul>
					</div>
					<!--//pNum영역-->

					<!--eMail영역-->
					<div class="key" id="eMail영역">
						<ul>
							<li class="listId"><input type="text" id="phoneId2" name="phoneId2" placeholder="아이디"></li>
							<li class="listName"><input type="text" id="phoneName2" name="phoneName2" placeholder="이름"></li>
							<li class="listChange"><input type="text" id="phoneNum2" name="phoneNum2" placeholder="이메일 주소"> 
								<input type="button" class="smBtn" value="인증번호" onclick="numChk2();"></li>
							<li class="listCode" id="hiddenArea"><input type="text" id="verificationCode2" name="verificationCode2" placeholder="인증번호"> <input type="button" value="확인" class="smBtn" onclick="codeChk2();"> <span id="timer2" class="smTxt"></span>
								<p id="ViewTimer2" class="smTxt2"></p>
							</li>
							<li>
								<input type="reset" class="btnBox btn1" value="취소" onclick="rsBtn();"> 
								<input type="button" class="btnBox btn2" value="확인" onclick="numCkBtn2();">
							</li>
						</ul>
					</div>
					<!--//eMail영역-->
				</form>
			</div>
			<!--//area2 영역-->

			<!--more영역-->
			<div class="more">
				<a href="${contextPath}/join/login.jsp" title="로그인 화면으로 이동" id="transfer1">[로그인 바로가기] </a> 
				<a href="${contextPath}/join/find_id.jsp" title="아이디 찾기 화면으로 이동" id="transfer2"> [아이디 찾기 바로가기]</a>
			</div>
			<!--//more영역-->
		</div>
		<!-- //contentWrap -->
		<script src="${contextPath}/js/mmenu-light.js"></script>
		<script src="${contextPath}/js/hidemenu.js"></script>
		<%@ include file="../footer.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="정보배">
<title>정보입력</title>
<link rel="stylesheet" href="${contextPath}/css/common.css">
<link rel="stylesheet" href="${contextPath}/css/register.css">

<link rel="stylesheet" href="${contextPath}/css/mmenu-light.css">
<link rel="stylesheet" href="${contextPath}/css/mburger.css">

<script src="https://kit.fontawesome.com/9d91dfe9ed.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="${contextPath}/js/register.js"></script>
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
					<li class="step"><i class="fas fa-check"></i> <span>STEP 1</span> <i class="fas fa-chevron-right"></i></li>
					<li><i class="far fa-file-alt point"></i> <span>STEP 2</span> <i class="fas fa-chevron-right"></i></li>
					<li class="step"><i class="fas fa-users"></i> <span>STEP 3</span></li>
				</ul>
			</div>
			<!-- //step -->
			<!-- form -->
			<form id="join" name="userInfo">
				<!--main 영역-->
				<div id="main">
					<!--content1 영역-->
					<div id="content1">
						<!--joinForm 영역-->
						<ul class="joinForm">
							<li class="list1">

								<div id="input1">
									<label for="userId" class="lable1">아이디</label> <input class="user1" type="text" id="userId" name="userId" minlength="4" maxlength="20" placeholder="ID(영문 4자 이상, 숫자 혼용가능)" onkeyup="idkey();"> <a href="#" class="btn1" onclick="confirmId();" title="아이디 중복확인">중복확인</a> <input type="hidden" name="idChkValue" value="idUnchk">
								</div>
								<p id="idP1" class="deiailP"></p>
							</li>
							<li class="list1">
								<div id="input2">
									<label for="userPwd" class="lable1">비밀번호</label> <input class="user2" type="password" id="userPwd" name="userPwd" minlength="4" maxlength="20" placeholder="비밀번호 (영문, 숫자, 특수문자  4-20자)" onkeyup="pwdKey1();">
								</div>
								<p id="pwdP1" class="deiailP"></p>
							</li>
							<li class="list1">
								<div id="input3">
									<label for="userPwd2" class="lable1">비밀번호 재입력</label> <input class="user2" type="password" id="userPwd2" name="userPwd2" minlength="4" maxlength="20" placeholder="비밀번호 재입력" onkeyup="pwdKey2();">
								</div>
								<p id="pwdP2" class="deiailP"></p>
							</li>
							<li class="list1">
								<div id="input4">
									<label for="userName" class="lable1">이름</label> <input class="user2" minlength="2" maxlength="20" type="text" id="userName" name="userName" placeholder="이름 입력" onkeyup="nameKey();">
								</div>
								<p id="nameP" class="deiailP"></p>
							</li>
							<li class="list1">
								<div id="input5">
									<label for="userBirthday" class="lable1">생년월일</label> <input class="user1" type="text" maxlength="8" id="userBirthday" name="userBirthday" placeholder="생년월일 8자리" onkeyup="birthKey();"> <span id="radioBox"> <input type="radio" name="gender" class="genderRadio" id="male" value="남"> <label for="male" class="genderLable" onclick="genderCheck()" title="성별선택">남</label> <input type="radio" name="gender" class="genderRadio" id="female" value="여"> <label for="female" class="genderLable" onclick="genderCheck()" title="성별선택">여</label>
									</span>
								</div>
								<p id="birthP" class="deiailP"></p>
							</li>
							<li class="list1" id="number">
								<div id="input6">
									<label for="userNum" class="lable1">휴대폰 번호</label> <input class="user1" type="text" id="userNum" name="userNum" placeholder="휴대폰번호 ('-'없이 입력)" maxlength="11" onkeyup="phoneKey();"> <input type="checkbox" id="connectNum"> <label for="connectNum" class="btn1" onclick="numberCheck()" title="인증번호 발송">인증번호</label>
								</div>
								<p id="phoneP" class="deiailP"></p>
							</li>
							<li id="input6_1">
								<!--Display:none 영역-->
								<div class="list1">
									<label for="userNum1" class="lable1">인증번호</label> <input class="user1" type="number" id="userNum1" name="userNum1" placeholder="인증번호를 입력해주세요."> <a href="#" class="btn1" onclick="confirmCheck()" title="인증번호 확인">확인</a>
								</div>
								<p class="hide" id="ViewTimer"></p> <!--//Display:none 영역-->
							</li>
							<li id="list2">
								<div id="input7">
									<label for="userEmail" class="lable1">이메일 주소</label> <input type="text" id="email1" name="userEmail1" title="이메일 계정 입력"> <span class="at">@</span> <input type="text" id="email2" name="userEmail2" title="이메일 계정 입력"> <br> <select class="user1" name="domain" id="domain" title="선택" onchange="input_email();">
										<option >직접입력</option>
										<option value="naver.com">naver.com</option>
										<option value="daum.net">daum.net</option>
										<option value="nate.com">nate.com</option>
										<option value="gmail.com">gmail.com</option>
									</select> <a href="#" class="btn1" onclick="doubleCheck()">중복확인</a> <input type="hidden" name="emailChkValue" value="emailUnchk">
								</div>
							</li>
						</ul>
						<!--//joinForm 영역-->
					</div>
					<!--//content1 영역-->

					<!--content3-->
					<div id="btnBox">
						<a href="${contextPath}/join/agree.jsp" id="cancel" class="btn3" title="이용약관 돌아가기">취소</a> <input type="submit" value="작성완료" id="done" class="btn3" onclick="joinBtn();">
					</div>
					<!--//content3-->
				</div>
				<!--//main 영역-->
			</form>
			<!-- //form -->
		</div>
		<!-- //contentWrap -->

		<script src="${contextPath}/js/mmenu-light.js"></script>
		<script src="${contextPath}/js/hidemenu.js"></script>
		<%@ include file="../footer.jsp"%>
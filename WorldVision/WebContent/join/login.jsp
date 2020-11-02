<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>"></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="정보배">
<title>로그인</title>
<link rel="stylesheet" href="${contextPath}/css/common.css">
<link rel="stylesheet" href="${contextPath}/css/login.css">
<link rel="stylesheet" href="${contextPath}/css/mmenu-light.css">
<link rel="stylesheet" href="${contextPath}/css/mburger.css">

<script type="text/javascript" src="${contextPath}/js/jquery.js"></script>
<script src="https://kit.fontawesome.com/9d91dfe9ed.js" crossorigin="anonymous"></script>
<script src="${contextPath}/js/login.js"></script>
</head>
<body>
	<div id="my-page">
		<%@ include file="../header.jsp"%>

		<!-- contentWrap -->
		<div id="contentWrap">
			<h3 id="contentTitle">로그인</h3>
			<form name="frmlogin" id="frmlogin">
				<!--boxInput영역-->
				<div id="boxInput">
					<ul id="hold">
						<li class="top"><input type="text" class="personal" placeholder="아이디" name="userId" id="userId"></li>
						<li>
							<p id="idInfo">형식과 맞지않는 아이디입니다.</p>
						</li>
						<li class="top"><input type="password" class="personal" name="userPwd" placeholder="비밀번호" id="userPwd"></li>
					</ul>
					<!--checkbox영역-->
					<div id="center">
						<input type="checkbox" id="check" name="idsave"> <label for="check"><em id="square"></em>아이디 저장</label>
					</div>
					<!--//checkbox영역-->
					<!--로그인 버튼 영역-->
					<input type="button" id="btn" name="btn" title="로그인 확인" onclick="loginBtn();" value="로그인">
					<!--//로그인 버튼 영역-->

					<!--serchBox 영역-->
					<div id="serchBox">
						<ul id="serch">
							<li><a href="${contextPath}/join/find_id.jsp" title="아이디찾기">아이디찾기</a></li>
							<li><a href="${contextPath}/join/find_pwd.jsp" title="비밀번호찾기">비밀번호찾기</a></li>
						</ul>
					</div>
					<!--//serchBox 영역-->
				</div>
				<!--//boxInput영역-->
			</form>
			<!--//폼테크 영역-->


			<div id="content_Personal">
				<div>
					<img src="${contextPath}/join/images/신규가입.png">
					<div class="personalText">
						<p>아직 회원가입을 안 하셨나요?</p>
						<p>
							홈페이지 회원가입을 하시면 나의 후원 내역 및 결제 정보 확인,<br> 나의후원아동 소식 및 후원 중인 사업 내용 확인 등 다양한 서비스를 이용하실 수 있습니다.
						</p>
					</div>
					<a href="${contextPath}/join/agree.jsp" title="신규가입 페이지로 이동">회원가입<br>바로하기
					</a>
				</div>
				<div>
					<img src="${contextPath}/join/images/기존후원.png">
					<div class="personalText">
						<p>기존 후원자이신가요? (단체 후원자 제외)</p>
						<p>
							이미 후원을 하고 있는 후원자이나 아이디, 비밀번호가 없으세요? 지금 바로 만드세요.<br> 홈페이지 회원이 되시면 후원내용, 아동에게 편지쓰기, 기부금 영수증 등 다양한 서비스를 이용하실 수 있습니다.
						</p>
					</div>
					<a href="${contextPath}/service.jsp" title="기존 후원자 계정만들기 페이지로 이동">아이디<br>비밀번호 만들기
					</a>
				</div>
			</div>
		</div>
		<!-- //contentWrap -->
		<script src="${contextPath}/js/mmenu-light.js"></script>
		<script src="${contextPath}/js/hidemenu.js"></script>
		<%@ include file="../footer.jsp"%>
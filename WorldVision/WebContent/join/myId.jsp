<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>
<!DOCTYPE html>
<html lang="KO">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="정보배">
<title>아이디찾기</title>
<link rel="stylesheet" href="${contextPath}/css/common.css">
<link rel="stylesheet" href="${contextPath}/css/myId.css">
<link rel="stylesheet" href="${contextPath}/css/mmenu-light.css">
<link rel="stylesheet" href="${contextPath}/css/mburger.css">
<script src="https://kit.fontawesome.com/9d91dfe9ed.js" crossorigin="anonymous"></script>
<script src="${contextPath}/js/find_id.js"></script>

</head>
<body>
	<div id="my-page">
		<%@ include file="../header.jsp"%>


		<!-- contentWrap -->
		<div id="contentWrap">
			<h3 id="contentTitle">아이디찾기</h3>
			<form id="idSerch" name="idSerch">
				<!--headTab 영역-->
				<div id="idInfo">
				<c:if test="${mResult!=null}">
   	 				${mResult.name } 회원님의 아이디는 <span>${mResult.id}</span>입니다.	
				</c:if>	
				<c:if test="${mResult2!=null}">
   	 				${mResult2.name } 회원님의 아이디는 <span>${mResult2.id}</span>입니다.	
				</c:if>					
				</div>
			</form>	
			

			<!--more영역-->
			<div class="more">
				<a href="${contextPath}/join/login.jsp" title="로그인 화면으로 이동" id="transfer1">로그인</a> 
				<a href="${contextPath}/join/find_pwd.jsp" title="비밀번호 찾기 화면으로 이동" id="transfer2">비밀번호 찾기</a>
			</div>
			<!--//more영역-->

		</div>
		<!-- //contentWrap -->
		<script src="${contextPath}/js/mmenu-light.js"></script>
		<script src="${contextPath}/js/hidemenu.js"></script>

		<%@ include file="../footer.jsp"%>
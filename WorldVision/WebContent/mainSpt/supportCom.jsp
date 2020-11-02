<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="정보배">
<title>후원완료</title>
<link rel="stylesheet" href="${contextPath}/css/common.css">
<link rel="stylesheet" href="${contextPath}/css/supportCom.css">

<link rel="stylesheet" href="${contextPath}/css/mmenu-light.css">
<link rel="stylesheet" href="${contextPath}/css/mburger.css">

<script src="${contextPath}/js/supInfo.js"></script>
</head>
<body>
	<div id="my-page">
		<%@ include file="../header.jsp"%>

		<!-- contentWrap -->
		<div id="contentWrap">
			<h3 id="contentTitle">후원완료</h3>

			<!-- step -->
			<div id="step">
				<ul>
					<li><img src="${contextPath}/mainSpt/images/bg_step1_off.png"
						alt="현재단계"> <span>후원종류 선택</span></li>
					<li><img src="${contextPath}/mainSpt/images/bg_step2_off.png"
						alt="step2"> <span>후원자 정보입력</span></li>
					<li><img src="${contextPath}/mainSpt/images/bg_step3_off.png"
						alt="step3"> <span>후원금 납입방법</span></li>
					<li><img src="${contextPath}/mainSpt/images/bg_step4_on.png"
						alt="step4"> <span>후원완료</span></li>
				</ul>
			</div>
			<!-- //step -->

			<div id="textWrap">
				<div id="infoArea">				
					<p id="titleTop">'${mResult.name}'님의 <span>후원신청</span>이 완료되었습니다.</p>
					<p id="titleMiddle">후원해주셔서 감사합니다.</p>
				</div>

				<p id="tableName">후원 상세정보</p>
				<table id="supTable">
					<tr>
						<th>후원자 이름</th>
						<td>${mResult.name}</td>
					</tr>
					<tr>
						<th>후원종류</th>
						<td>${sResult.supportName}</td>
					</tr>
					<tr>
						<th>후원금액</th>
						<td>${sResult.supportPrice} / 매월 총금액 : ${total} 원</td>
					</tr>
					<tr>
						<th>후원방법</th>
						<td>${sResult.formulas}</td>
					</tr>
					<tr>
						<th>결제방법</th>
						<td>${sResult.payWay}</td>
					</tr>
				</table>
				<p id="tableEx">
					<span>* 후원신청은 최대 3~5일 소요됩니다.</span> <br> 3~5일 이후에 후원아동과 사업 후원
					메뉴에서 자세한 후원 정보를 확인하실 수 있습니다.
				</p>
			</div>
			<a href="${contextPath}/index.jsp" id="mainBtn">메인으로 돌아가기</a>
		</div>
		<!-- //contentWrap -->
		
		<script src="${contextPath}/js/mmenu-light.js"></script>
		<script src="${contextPath}/js/hidemenu.js"></script>

		<%@ include file="../footer.jsp"%>
		
		
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="정보배">
<title>마이 월드비전</title>
<link rel="stylesheet" href="${contextPath}/css/common.css">
<link rel="stylesheet" href="${contextPath}/css/leaveSite.css">
<link rel="stylesheet" href="${contextPath}/css/mmenu-light.css">
<link rel="stylesheet" href="${contextPath}/css/mburger.css">
<script src="https://kit.fontawesome.com/9d91dfe9ed.js" crossorigin="anonymous"></script>
<script src="${contextPath}/js/leaveSite.js"></script>
</head>
<body>
	<div id="my-page">
		<%@ include file="../header.jsp"%>

		<!-- contentWrap -->
		<div id="contentWrap">
			<h3 id="contentTitle">회원 탈퇴</h3>
			<!-- form -->
			<form id="lvSite" name="lvSite">
				<div id="innerForm">
					<p id="ttlTxt">
						아래 내용을 꼭 확인하시고<br> <strong>신중하게</strong>결정하시기 바랍니다.
					</p>
					<p id="subTtl">웹 회원탈퇴 신청에 앞서 아래의 사항을 반드시 확인하시기 바랍니다.</p>
					<ul>
						<li><span class="num">1</span>
							<div class="pBox">
								<p class="listTtl">정기후원 중지</p>
								<p id="point">회원을 탈퇴하더라도,후원이 중지되는것은 아닙니다.</p>
								<p class="ex">웹 회원탈퇴 후 후원 중지를 원하시면 전화 02-2078-7000으로 후원 중지 의사를 밝혀 주시기 바랍니다.</p>
							</div></li>
						<li><span class="num">2</span>
							<div class="pBox">
								<p class="listTtl">웹 회원 탈퇴 시 홈페이지를 통하여 후원 내역 확인 불가능</p>
								<p class="ex">
									웹 회원 탈퇴 시 홈페이지를 통하여 후원 내역을 확인 하실 수 없습니다.<br>탈퇴 후 후원 내역 확인을 원하시면 전화 02-2078-7000으로 문의하여 주시기 바랍니다.
								</p>
							</div></li>
						<li><span class="num">3</span>
							<div class="pBox">
								<p class="listTtl">개인정보 관리</p>
								<p class="ex">
									후원자가 아닌 웹 회원인 경우,탈퇴와 동시에입력하신 개인정보는 모두 삭제됩니다.<br>후원자이면서 웹 회원인 경우, 웹회원 탈퇴 이후에도 후원 관련한 업무로 인해 개인정보는 후원이 지속되는 동안 보유합니다. <br>후원자이면서 웹 회원인 경우, 후원 중지와 홈페이지 탈퇴를 동시에 요청한 경우에도<br>추후 후원과 관련한 각종 증명서 발급 등을 위해 보유합니다.
								</p>
							</div></li>
						<li><span class="num">4</span>
							<div class="pBox">
								<p class="ex">
									<strong>다만,</strong> 후원자/웹 회원이 개인정보 삭제를 요청할 경우 등록되어 있는 개인정보를 폐기하며,<br>그 이후에 발생될 수 있는 각종 증명서 발급 등 관련된 업무에 대해서는 월드비전에서 지원하지 않습니다.
								</p>
							</div>
						</li>
					</ul>
					<div id="bottomBtn">
						<input type="checkbox" name="txtChk" id="txtChk"><label for="txtChk">위의 내용을 확인하셨습니까?</label><br> <input type="button" id="fnlBtn" name="fnlBtn" value="회원탈퇴" onclick="final();">
					</div>

				</div>
			</form>
			<!-- //form -->
		</div>
		<!-- //contentWrap -->

		<script src="${contextPath}/js/mmenu-light.js"></script>
		<script src="${contextPath}/js/hidemenu.js"></script>
		<%@ include file="../footer.jsp"%>
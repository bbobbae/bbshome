<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="정보배">
<title>후원자 정보입력</title>
<link rel="stylesheet" href="${contextPath}/css/common.css">
<link rel="stylesheet" href="${contextPath}/css/supportInfo.css">

<link rel="stylesheet" href="${contextPath}/css/mmenu-light.css">
<link rel="stylesheet" href="${contextPath}/css/mburger.css">
<script src="${contextPath}/js/supInfo.js"></script>
</head>
<body>
	<div id="my-page">
		<%@ include file="../header.jsp"%>
		<!-- contentWrap -->
		<div id="contentWrap">
			<h3 id="contentTitle">후원신청하기</h3>

			<!-- step -->
			<div id="step">
				<ul>
					<li><img src="${contextPath}/mainSpt/images/bg_step1_off.png" alt="현재단계"> <span>후원종류 선택</span></li>
					<li><img src="${contextPath}/mainSpt/images/bg_step2_on.png" alt="step2"> <span>후원자 정보입력</span></li>
					<li><img src="${contextPath}/mainSpt/images/bg_step3_off.png" alt="step3"> <span>후원금 납입방법</span></li>
					<li><img src="${contextPath}/mainSpt/images/bg_step4_off.png" alt="step4"> <span>후원완료</span></li>
				</ul>
			</div>
			<!-- //step -->

			<!-- 후원정보입력 -->
			<div id="spon">
				<form name="suppoterI" id="suppoterI">
					<div id="supIn" class="supTitle">후원내용</div>

					<table id="supResult" summary="선택한 후원목록 확인하는 표">
						<caption>후원내용 확인</caption>
						<c:forEach var="val" items="${map}">
							<tr>
								<td>${val.key}</td>
								<td><span>${val.value}</span> 원</td>
							</tr>
						</c:forEach>
					</table>
					<div id="total">
						합계
						<p>
							매월 <span>${total}</span>원 (${rsResult.formulas})
						</p>
					</div>




					<div id="supporter" class="supTitle">후원자 정보확인</div>
					<table id="basicInfo" class="infoTab" summary="구체적인 후원자 정보 입력받는 표">
						<caption>후원자 정보확인</caption>
						<tr id="supName">
							<th>후원자명</th>
							<td><input type="text" placeholder="이름" name="userName" id="userName" value="${mResult.name}" readonly></td>
						</tr>
						<tr id="phone">
							<th>휴대전화</th>
							<td><input type="text" name="phoneNum" id="phoneNum" value="${mResult.phone}" readonly></td>
						</tr>
						<tr id="email">
							<th>이메일</th>
							<td><input type="text" name="email1" id="email1" value=${mResult.email1 } readonly>@ <input type="text" name="email2" id="email2" value=${mResult.email2 } readonly></td>
						</tr>
					</table>


					<div id="supporter" class="supTitle">후원자정보 추가입력</div>
					<table id="suportPsl" class="infoTab" summary="후원자 정보 추가로 입력받는 표">
						<caption>후원자 추가정보입력</caption>
						<tr id="letter">
							<th>소식지신청<span>*</span></th>
							<td><input type="radio" name="news" id="smartPhone" value="phone" /><label for="smartPhone">스마트폰</label> <input type="radio" name="news" id="post" value="post" /><label for="post">이메일</label> <input type="radio" name="news" id="N" value="N" checked /><label for="N">받지 않음</label></td>
						</tr>
						<tr id="service">
							<th>국세청 연말정산<br>간소화 서비스<br>등록여부<span>*</span></th>
							<td id="simple">
								<div id="mainTxt">
									<p>연말정산 간소화 서비스에서 기부금 영수증을 발급하시겠습니까?</p>
									<input type="radio" name="receipt" id="Yes" value="Y" onchange="turnYes();" /><label for="Yes">예</label> <input type="radio" name="receipt" id="No" value="N" checked onchange="turnNo();" /><label for="No">아니오</label>
								</div>
								<div id="spSym">
									<p id="serviceTxt">
										※ 후원자님의 주민등록번호를 입력해주세요. (타인 주민등록번호 입력 불가)<br> &nbsp;&nbsp;&nbsp;입력하신 주민등록번호로 국세청 연말정산 간소화 서비스에 등록됩니다.
									</p>
									<p id="secondTxt">
										※ 금융거래 기록이 없는 14세 미만은 인증이 불가할 수도 있습니다.<br> &nbsp;&nbsp;&nbsp;기부금 영수증 요청은 월드비전 상담센터 (02-2078-7000)를 이용해 주시면 감사하겠습니다.
									</p>
									<p id="personalNum">
										주민등록번호 <input type="text" name="pslFrt" id="pslFrt" maxlength="6" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" /> <input type="password" name="pslBack" id="pslBack" maxlength="7" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" /> <a href="#" id="personalChk" onclick="personalNumChk();">주민번호 본인인증</a>
									</p>
									<p id="agree">
										<span>[선택]</span>고유식별정보 제공에 대한 동의
									</p>
									<div id="agreeTable">
										<div id="agreeTtl">
											<span>목적</span><span>항목</span><span>보유기간</span>
										</div>
										<div id="agreeEx">
											<p>기부금 영수증 발급 및 연말정산 간소화 서비스 등록</p>
											<p>주민등록번호</p>
											<p>기부금 영수증 발급 날로부터 5년간보관</p>
										</div>

									</div>
									<p id="smTxt">
										* 주민등록번호는 후원자님이 원치 않으시면 작성하지 않으셔도 후원신청이 됩니다.<br> &nbsp;&nbsp;&nbsp;단 기부금영수증 발급 및 연말정산 간소화 서비스 등록이 필요하시면 주민등록번호를 반드시 기입하여 주시기 바랍니다.<br> * 후원자 기부금 영수증 발급은 소득세법 160조의3, 법인세법제112조의2 및 동법 시행령 155조의2,에 의해 5년간 보관 후 파기합니다.
									</p>
								</div>
							</td>
						</tr>
						<tr id="kidLetter">
							<th>아동편지번역<br>여부<span>*</span></th>
							<td><input type="radio" name="letterSlt" id="Yes2" value="Y" checked /><label for="Yes2">예</label> <input type="radio" name="letterSlt" id="No2" value="N" /><label for="No2">아니오</label>
								<p>※ 아니오 선택 시, 한글 번역과정을 거치지 않아 편지를 보다 빨리 받아보실 수 있으며 현지어 및 영문 편지가 함께 발송됩니다.</p></td>
						</tr>
					</table>


					<div id="btnArea">
						<input type="button" id="prvBtn" name="prvBtn" value="이전" onclick="location.href='/WorldVision/worldVision.jb?type=supportPart'"> <input type="button" id="nextBtn" value="다음" name="nextBtn" onclick="next();">
					</div>
				</form>

			</div>
			<!-- 후원정보입력 -->
		</div>
		<!-- //contentWrap -->
		<script src="${contextPath}/js/mmenu-light.js"></script>
		<script src="${contextPath}/js/hidemenu.js"></script>

		<%@ include file="../footer.jsp"%>
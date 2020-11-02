<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="정보배">
<title>후원금 납입방법</title>
<link rel="stylesheet" href="${contextPath}/css/common.css">
<link rel="stylesheet" href="${contextPath}/css/supportWay.css">

<link rel="stylesheet" href="${contextPath}/css/mmenu-light.css">
<link rel="stylesheet" href="${contextPath}/css/mburger.css">
<script type="text/javascript"
	src="${contextPath}/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="${contextPath}/js/supWay.js"></script>
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
					<li><img src="${contextPath}/mainSpt/images/bg_step1_off.png"
						alt="현재단계"> <span>후원종류 선택</span></li>
					<li><img src="${contextPath}/mainSpt//images/bg_step2_off.png"
						alt="step2"> <span>후원자 정보입력</span></li>
					<li><img src="${contextPath}/mainSpt//images/bg_step3_on.png"
						alt="step3"> <span>후원금 납입방법</span></li>
					<li><img src="${contextPath}/mainSpt//images/bg_step4_off.png"
						alt="step4"> <span>후원완료</span></li>
				</ul>
			</div>
			<!-- //step -->

			<!-- 후원정보입력 -->
			<div id="spon">

				<form name="supPay">
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
							매월 <span>${total}</span>원 (${sResult.formulas})
						</p>
					</div>


					<div id="supWayTtl" class="supTitle">후원금 납입방법</div>
					<table id="payBank" class="tbForm">
						<tr>
							<th>후원방식</th>
							<td class="tabs" id="tab">
								<input type="radio" name="payWay" value="신용카드" 
									id="card" class="tab-link current" data-tab="tab-1" checked>
								<label for="card">신용카드</label> 
								<input type="radio" name="payWay" value="자동이체" id="auto" class="tab-link" data-tab="tab-2">
								<label for="auto">자동이체</label>	
							</td>
						</tr>
					</table>

					<div class="resultArea">						
						<div id="cardTab" class="tab-content current">
							<p class="exColor priceEx">※ 후원금 납입방법을 변경하시면 해당 정보로 납입되던 모든 후원 상품의 후원금 납입방법이 변경됩니다.</p>
							<table summary="후원금 납입 정보입력하는 표" id="supInfor" class="tbForm">
								<tr id="cardName" class="bankRow">
									<th>카드명<span>*</span></th>
									<td>
										<select name="cardNm" id="cardNm">
												<option value="-" selected>선택</option>
												<option value="BC카드">BC카드</option>
												<option value="신한카드">신한카드</option>
												<option value="KB국민카드">KB국민카드</option>
												<option value="KEB하나카드">KEB하나카드</option>
												<option value="롯데카드">롯데카드</option>
												<option value="현대카드">현대카드</option>
												<option value="삼성카드">삼성카드</option>
												<option value="NH카드">NH카드</option>
												<option value="카카오카드">카카오카드</option>
												<option value="기타">기타</option>
										</select>
									</td>
								</tr>
								<tr id="cardNum">
									<th>카드번호<span>*</span></th>
									<td id="birthDay">
										<input type="text" name="cardNum1" id="cardNum1" maxlength="4" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" /> - 
										<input type="password" name="cardNum2"id="cardNum2"  maxlength="4" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" /> - 
										<input type="password" name="cardNum3" id="cardNum3"  maxlength="4" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" /> - 
										<input type="text" name="cardNum4" id="cardNum4"  maxlength="4" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" />
										<p id="cardEx" class="exColor">카드정보는 AES256을 이용한 암호화를 통해 안전하게 저장, 관리됩니다.</p>
									</td>
								</tr>
								<tr>
									<th>유효기간<span>*</span></th>
									<td id="limit"><select name="month" id="month">
											<option value="-" selected>선택</option>
											<option value="01">01</option>
											<option value="02">02</option>
											<option value="03">03</option>
											<option value="04">04</option>
											<option value="05">05</option>
											<option value="06">06</option>
											<option value="07">07</option>
											<option value="08">08</option>
											<option value="09">09</option>
											<option value="10">10</option>
											<option value="11">11</option>
											<option value="12">12</option>
									</select> <select name="year" id="year">
											<option value="-" selected>선택</option>
											<option value="2020">2020</option>
											<option value="2021">2021</option>
											<option value="2022">2022</option>
											<option value="2023">2023</option>
											<option value="2024">2024</option>
											<option value="2025">2025</option>
											<option value="2026">2026</option>
											<option value="2027">2027</option>
											<option value="2028">2028</option>
											<option value="2029">2029</option>
											<option value="2030">2030</option>
									</select> <span class="exColor">(예:06/13인 경우 6월 2013년)</span></td>
								</tr>
								<tr id="cardOwn">
									<th>카드소유주<span>*</span></th>
									<td>
										<input type="hidden" id="hiddenName" value="${mResult.name}">
										<input type="text" id="putName" name="cardOwn"> 
										<input id="sameName" onclick="nameChk();" type="checkbox"name="sameName" id="sameName">
										<label for="sameName" class="exColor">후원자와 같음</label>
									</td>
								</tr>
								<tr id="payDay">
									<th>후원결제일<span>*</span></th>
									<td>
										<p>카드승인일은 매월 15일이며, 미승인시 25일에 추가승인이 이루어집니다.</p>
										<p>카드승인일(15일) 이후 후원신청을 해주신 후원자님의 첫 후원금은 추가승인일(25일)에 결제됩니다.</p>
									</td>
								</tr>
							</table>
						</div>



					
						<div id="autoTab" class="tab-content">
							<p class="exColor priceEx">※ 후원금 납입방법을 변경하시면 해당 정보로 납입되던 모든 후원 상품의 후원금 납입방법이 변경됩니다.</p>
							<table summary="후원금 납입 정보입력하는 표" id="supInfor" class="tbForm">								
								<tr class="bankRow">
									<th>은행명<span>*</span></th>
									<td><select name="bankName" id="bankName">
											<option value="-" selected>선택</option>
											<option value="산업은행">산업은행</option>
											<option value="기업은행">기업은행</option>
											<option value="KB국민은행">KB국민은행</option>
											<option value="수협">수협</option>
											<option value="NH농협은행">NH농협은행</option>
											<option value="지역(단위)농협">지역(단위)농협</option>
											<option value="우리은행">우리은행</option>
											<option value="스탠다드차타드은행">스탠다드차타드은행</option>
											<option value="KEB하나은행">KEB하나은행</option>
											<option value="신한은행">신한은행</option>
											<option value="한국씨티은행">한국씨티은행</option>
											<option value="대구은행">대구은행</option>
											<option value="부산은행">부산은행</option>
											<option value="광주은행">광주은행</option>
											<option value="제주은행">제주은행</option>
											<option value="전북은행">전북은행</option>
											<option value="경남은행">경남은행</option>
											<option value="새마을금고">새마을금고</option>
											<option value="신협">신협</option>
											<option value="카카오뱅크">카카오뱅크</option>
									</select></td>
								</tr>
								<tr>
									<th>예금주<span>*</span></th>
									<td>
										<input type="text" id="inputName" name="bankOwn"> 
										<input type="checkbox"	onclick="sameChk();" name="sameSupporter" id="sameSupporter">
										<label for="sameSupporter" class="exColor">후원자와 같음</label>
									</td>
								</tr>
								<tr>
									<th>계좌번호<span>*</span></th>
									<td>
										<input type="text" name="bankNum" id="bankNum" maxlength="21" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" />
										<a href="#" class="bankBtn" onclick="bankNumChk();">계좌번호인증</a>
										<p class="exColor">※ 휴대전화번호로 된 계좌번호는 사용하실 수 없습니다. 다른 계좌번호를 사용하여 주세요.</p>
									</td>
								</tr>
								<tr>
									<th>예금주<br>생년월일<span>*</span></th>
									<td>
										<input type="hidden" id="hiddenBirth" value="${mResult.birth}">
										<input type="text" id="putBirth" placeholder="생년월일 8자리" name="bankBirth" maxlength="8" onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" />
										<input type="checkbox"	name="sameBirth" id="sameBirth" onclick="birthChk();">
										<label for="sameBirth" class="exColor">후원자 정보와 동일</label> 
										<br>
										<input type="checkbox" name="payAgree" value="Y" id="payAgree"><label for="payAgree" class="exColor">후원금 정기 납입을 위한 개인정보 수집에 동의합니다.</label>
									<a href="#" title="개인정보 취급방침 전문 보기 이동" class="bankBtn">개인정보 취급방침 보기</a></td>
								</tr>
								<tr id="dayCh">
									<th>이체일 선택<span>*</span></th>
									<td>
										<input type="radio" name="transDay" value="day10"  id="day10"><label for="day10">매월 10일</label> 
										<input type="radio" name="transDay" value="day25" id="day25"><label for="day25">매월 25일</label>
										<p id="dayChk">
											※ 선택해주신 이체일에 (평일기준) 통장에서 자동으로 후원금이 이체되며, 후원자님의 이름과 예금주의 성함이 다를
											경우 꼭 예금주의 생년월일을 기재해주시기 바랍니다. <br> ※ 선택하신 이체일에 후원금이 전달되지
											않은 경우, 이체일(10일,25일) 이후 평일 기준 3일/5일 뒤에 재출금을 실시합니다. <br> ※
											선택하신 이체일(10일/25일) 이후 후원신청을 해주신 후원자님의 첫 후원금은 당월 재출금일에 출금될 수
											있습니다.
										</p>
									</td>
								</tr>								
							</table>
						</div>
					</div>

					<div id="btnArea">
						<input type="button" id="prvBtn" name="prvBtn" value="이전"
							onclick="location.href='/WorldVision/worldVision.jb?type=supportPart'">
						<input type="button" id="nextBtn" value="후원하기" name="nextBtn" onclick="next();">
					</div>
				</form>
			</div>
			<!-- 후원정보입력 -->
		</div>
		<!-- //contentWrap -->
		<script src="${contextPath}/js/mmenu-light.js"></script>
		<script src="${contextPath}/js/hidemenu.js"></script>
		<%@ include file="../footer.jsp"%>
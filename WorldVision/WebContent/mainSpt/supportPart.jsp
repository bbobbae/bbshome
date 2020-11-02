<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="정보배">
<title>후원종류 선택</title>
<link rel="stylesheet" href="${contextPath}/css/common.css">
<link rel="stylesheet" href="${contextPath}/css/supportPart.css">

<link rel="stylesheet" href="${contextPath}/css/mmenu-light.css">
<link rel="stylesheet" href="${contextPath}/css/mburger.css">
<script src="${contextPath}/js/supPart.js"></script>
<script type="text/javascript" src="${contextPath}/js/jquery.js"></script>
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
					<ul>
						<li><img src="${contextPath}/mainSpt/images/bg_step1_on.png" alt="현재단계"> <span>후원종류 선택</span></li>
						<li><img src="${contextPath}/mainSpt//images/bg_step2_off.png" alt="step2"> <span>후원자 정보입력</span></li>
						<li><img src="${contextPath}/mainSpt//images/bg_step3_off.png" alt="step3"> <span>후원금 납입방법</span></li>
						<li><img src="${contextPath}/mainSpt//images/bg_step4_off.png" alt="step4"> <span>후원완료</span></li>
					</ul>
			</div>
			<!-- //step -->

			<!-- 후원선택 -->
			<div id="spon">
				<form name="spPart" id="spPart">
					<p class="supTtl">후원방식</p>

					<table id="supWay">
						<th>후원방식</th>
						<td><input type="radio" name="supPart" id="regulary" value="정기후원" title="정기후원" onclick="reg();" checked> <label for="regulary">정기후원</label> <input type="radio" name="supPart" id="temporary" value="일시후원" title="일시후원" onclick="temp();"> <label for="temporary">일시후원</label></td>
					</table>
					<p class="supTtl">후원종류</p>
					<p class="exInfo">※ 여러 가지 후원을 한번에 신청하실 수 있습니다. 원하시는 후원의 종류를 모두 선택해주세요.</p>
					<div id="checkWrap">
						<table id="kidSup" summary="월드비전 아동후원 종류 선택하는 표">
							<caption>아동후원 종류 선택</caption>
							<th>아동후원</th>
							<td><input type="checkbox" name="chkSup" value="해외아동사업" id="interKid" onclick="price();" title="해외아동후원"> <label for="interKid">해외아동후원</label> <input type="checkbox" name="chkSup" value="국내아동사업" id="domesticKid" onclick="price();" title="국내아동후원"> <label for="domesticKid">국내아동후원</label></td>
						</table>
						<table id="busiSup" summary="월드비전의 사업후원 선택하는 표">
							<caption>사업후원 종류 선택</caption>
							<th>사업후원</th>
							<td>
								<p>
									<input type="checkbox" name="chkSup" value="해외사업" id="interBusi" onclick="price();" title="해외사업후원"> <label for="interBusi">해외사업후원<span>(해외 취약아동이 사는 마을의 교육, 식수위생, 보건영양, 소득증대, 아동보호를 위한 통합적인 사업을 합니다.) </span></label>
								</p>
								<p>
									<input type="checkbox" name="chkSup" value="국내사업" id="domesticBusi" onclick="price();" title="국내사업후원"> <label for="domesticBusi">국내사업후원<span>(국내 취약계층 아동의 영양지원, 위기지원, 꿈 지원을 위한 사업을 합니다.)</span></label>
								</p>
								<p>
									<input type="checkbox" name="chkSup" value="긴급구호사업" id="emerBusi" onclick="price();" title="긴급구호사업후원"> <label for="emerBusi">긴급구호사업후원<span>(자연재해, 분쟁, 식량위기로 고통 받는 아이들을 신속하고 전문적으로 지원합니다.)</span></label>
								</p>
								<p>
									<input type="checkbox" name="chkSup" value="북한사업" id="northBusi" onclick="price();" title="북한사업후원"> <label for="northBusi">북한사업후원<span>(북한 어린이들을 위한 영양지원, 농업개발, 식수지원 사업을 합니다.)</span></label>
								</p>
								<p>
									<input type="checkbox" name="chkSup" value="전체사업" id="allBusi" onclick="price();" title="전체사업후원"> <label for="allBusi">전체사업후원<span>(월드비전의 모든 활동을 지속적이고 포괄적으로 지원합니다.)</span></label>
								</p>
							</td>
						</table>
					</div>


					<div id="priceWrap">
						<p id="supPrice">후원금액</p>
						<table id="totalCalc" summary="후원금액 선택하는 표">
							<caption>후원금 선택</caption>
							<tr id="domKidPrice" class="showPr">
								<td>해외아동후원</td>
								<td>30,000 X <select name="intKidCnt" id="intKidCnt" onchange="intSel();">
										<option value="1" selected>1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
								</select>명 = <input type="text" name="outPrice" value="30,000" id="intKid" class="chkPce" readonly>원
								</td>
							</tr>
							<tr id="interKidPrice" class="showPr">
								<td>국내아동후원</td>
								<td>50,000 X <select name="domKidCnt" id="domKidCnt" onchange="intSel();">
										<option value="1" selected>1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
								</select>명 = <input type="text" name="outPrice" value="50,000" id="domKid" class="chkPce" readonly>원
								</td>
							</tr>
							<tr id="intBusiPrice" class="showPr">
								<td>해외사업후원</td>
								<td><select name="inPrice" id="interPrice" onchange="intSel();">
										<option value="10000">10,000</option>
										<option value="20000">20,000</option>
										<option value="30000" selected>30,000</option>
										<option value="50000">50,000</option>
										<option value="100000">100,000</option>
								</select> <input type="text" id="intRst" value="30,000" name="outPrice" class="chkPce" readonly>원</td>
							</tr>
							<tr id="domBusiPrice" class="showPr">
								<td>국내사업후원</td>
								<td><select name="inPrice" id="domesticPrice" onchange="intSel();">
										<option value="10000">10,000</option>
										<option value="20000">20,000</option>
										<option value="30000" selected>30,000</option>
										<option value="50000">50,000</option>
										<option value="100000">100,000</option>
								</select> <input type="text" id="domRst" value="30,000" name="outPrice" class="chkPce" readonly>원</td>
							</tr>
							<tr id="emerPrice" class="showPr">
								<td>긴급구호사업후원</td>
								<td><select name="inPrice" id="emergenPrice" onchange="intSel();">
										<option value="10000">10,000</option>
										<option value="20000">20,000</option>
										<option value="30000" selected>30,000</option>
										<option value="50000">50,000</option>
										<option value="100000">100,000</option>
								</select> <input type="text" id="emerRst" value="30,000" name="outPrice" class="chkPce" readonly>원</td>
							</tr>
							<tr id="norPrice" class="showPr">
								<td>북한사업후원</td>
								<td><select name="inPrice" id="northPrice" onchange="intSel();">
										<option value="10000">10,000</option>
										<option value="20000">20,000</option>
										<option value="30000" selected>30,000</option>
										<option value="50000">50,000</option>
										<option value="100000">100,000</option>
								</select> <input type="text" id="norRst" value="30,000" name="outPrice" class="chkPce" readonly>원</td>
							</tr>
							<tr id="ttlPrice" class="showPr">
								<td>전체사업후원</td>
								<td><select name="allPrice" id="allPrice" onchange="intSel();">
										<option value="10000">10,000</option>
										<option value="20000">20,000</option>
										<option value="30000" selected>30,000</option>
										<option value="50000">50,000</option>
										<option value="100000">100,000</option>
								</select> <input type="text" id="allRst" value="30,000" name="outPrice" class="chkPce" readonly />원</td>
							</tr>
						</table>
						<div id="total">
							합계
							<p>
								매월 <span id="ttlPce">0</span> 원
							</p>
						</div>
					</div>
					<input type="button" value="후원하기" id="next" name="next" onclick="inputChk();">

				</form>
				<!-- //   후원선택 -->
			</div>
		</div>
		<!-- //contentWrap -->
		<script src="${contextPath}/js/mmenu-light.js"></script>
		<script src="${contextPath}/js/hidemenu.js"></script>

		<%@ include file="../footer.jsp"%>
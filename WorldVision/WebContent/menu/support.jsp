<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="정보배">
<title>후원안내</title>
<link rel="stylesheet" href="${contextPath}/css/common.css">
<link rel="stylesheet" href="${contextPath}/css/support.css">
<link rel="stylesheet" href="${contextPath}/css/mmenu-light.css">
<link rel="stylesheet" href="${contextPath}/css/mburger.css">
<link rel="stylesheet" href="${contextPath}/css/accordion.css">

<script type="text/javascript" src="${contextPath}/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="${contextPath}/js/accordion.js"></script>
<script src="https://kit.fontawesome.com/9d91dfe9ed.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="${contextPath}/js/support.js"></script>
</head>
<body>
	<div id="my-page">
		<%@ include file="../header.jsp"%>

		<!-- contentSurpport -->
		<div id="contentSurpport">
			<div>
				<p>월드비전 후원안내</p>
				<p>
					모든 어린이에게 풍성한 삶을<br> 따뜻하고 아름다운 세상, 당신의 나눔으로 시작됩니다.
				</p>
			</div>
		</div>
		<!-- //contentSurpport -->

		<!-- contentWrap -->
		<div id="contentWrap">

			<!-- contentText -->
			<div id="contentText">
				<p>'나에게 맞는 후원은 뭘까?'</p>
				<p>다양한 후원 종류 한눈에 보기</p>
				<p id="kidTitle" class="smallTitle">아동후원</p>
			</div>
			<!--// contentText -->

			<!-- basicType -->
			<div id="basicType">
				<div id="contentChild">

					<div id="foreignKid" class="kidSupport">
						<p>해외아동후원</p>
						<p>
							전 세계 도움이 필요한 아이들의 오늘과 내일을<br>바꾸어 가는 여정에 함께 해주세요.
						</p>
						<a href="${contextPath}/service.jsp" class="donationBtn">후원하기</a>
					</div>

					<div id="domesticKid" class="kidSupport">
						<p>국내아동후원</p>
						<p>
							위기에서 보호받고 마음껏 꿈을 펼쳐나갈 수 있도록<br>우리 아이들의 손을 붙잡아 주세요.
						</p>
						<a href="${contextPath}/service.jsp" title="해외아동 후원 페이지로 이동" class="donationBtn">후원하기</a>
						<p id="businessTitle" class="smallTitle">사업후원</p>
					</div>

				</div>

				<!-- contentBusiness -->
				<div id="contentBusiness">
					<div class="bgwrap">
						<div id="foreignSup" class="scale"></div>
						<ul class="btnArea">
							<li>해외사업후원</li>
							<li>아이들이 건강하게 자랄수 있는<br>마을을 함께 만들어 갑니다.
							</li>
							<li><a href="${contextPath}/service.jsp" title="해외사업후원 페이지로 이동" class="businessBtn">후원하기 </a></li>
						</ul>
					</div>

					<div class="bgwrap">
						<div id="domesticSup" class="scale"></div>
						<ul class="btnArea">
							<li>국내사업후원</li>
							<li>어려운 환경에 처한 아이들이 건강하게<br>성장해 꿈을 이룰 수 있도록 지원합니다.
							</li>
							<li><a href="${contextPath}/service.html" title="국내사업후원 페이지로 이동" class="businessBtn">후원하기 </a></li>
						</ul>
					</div>

					<div class="bgwrap">
						<div id="emergencySup" class="scale"></div>
						<ul class="btnArea">
							<li>긴급구호사업후원</li>
							<li>자연재해, 전쟁 등으로 생명과 일상을<br>위협받는 이들의 일상의 회복을 돕습니다.
							</li>
							<li><a href="${contextPath}/service.html" title="긴급구호사업 후원 페이지로 이동" class="businessBtn">후원하기 </a></li>
						</ul>
					</div>
					<div class="bgwrap">
						<div id="southKoreaSup" class="scale"></div>
						<ul class="btnArea">
							<li>북한사업후원</li>
							<li>심각한 식량 문제에 처한 북한 어린이와<br>주민의 근본적인 식량문제 해결을 돕습니다.
							</li>
							<li><a href="${contextPath}/service.html" title="북한사업 후원 페이지로 이동" class="businessBtn">후원하기 </a></li>
						</ul>
					</div>
					<p id="specialTitle" class="smallTitle">특별후원</p>
				</div>
				<!-- //contentBusiness -->

				<!-- special -->
				<div id="special">

					<div id="contentLeft">
						<p>기업후원</p>
						<p class="specialText">
							지구촌 아이들과 함게하는 기업,<br>따뜻함을 나누면 사랑으로 전해집니다.
						</p>
						<a href="${contextPath}/service.jsp" title="기업후원 페이지 이동" class="specialBtn">후원하기</a> <img src="${contextPath}/menu/donation_images/donation_기업.png" alt="기업후원 이미지">
					</div>

					<div id="contentRight">
						<p>고액후원</p>
						<p class="specialText">
							다음 세대를 위한 고귀한 꿈,<br>후원자님의 이름이 어린이들의 희망이 됩니다.
						</p>
						<a href="${contextPath}/service.jsp" title="고액후원 페이지 이동" class="specialBtn">후원하기</a> <img src="${contextPath}/menu/donation_images/donation_고액.png" alt="고액후원 이미지">
					</div>

					<div id="firstSupport">
						<img src="${contextPath}/menu/donation_images/star.jpeg" alt="별 이미지">
						<p id="supportTitle">월드비전 후원이 처음이신가요?</p>
						<P id="supportText">
							후원 종류와 후원자가 참여 가능한 활동을 소개해드립니다.<br>작고 따뜻한 마음을 담아 지구촌 어린이들의 희망이 되어주세요.
						</P>
						<a href="${contextPath}/service.jsp" title="후원 소개자료 우편신청페이지로 이동">후원소개자료<br>우편신청하기
						</a>
					</div>

				</div>
				<!-- //special -->
			</div>
			<!-- //basicType -->



			<!-- mobileType -->
			<div id="mobileType" class="wrapper">

				<div class="accordion active">
					<div class="accordion_tab active">
						해외아동후원
						<div class="accordion_arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</div>
					<div id="foreignKid" class="kidSupport accordion_content">
						<div class="textWrap">
							<p>
								전 세계 도움이 필요한 아이들의 오늘과 내일을<br>바꾸어 가는 여정에 함께 해주세요.
							</p>
							<a href="${contextPath}/service.jsp" title="해외아동 후원 페이지로 이동" class="moresee">자세히 보기</a> <a href="${contextPath}/service.jsp" title="후원 페이지로 이동" class="supportBtn">후원하기</a>
						</div>

					</div>
				</div>



				<div class="accordion">
					<div class="accordion_tab">
						국내아동후원
						<div class="accordion_arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</div>
					<div id="domesticKid" class="kidSupport accordion_content">
						<div class="textWrap">
							<p>
								위기에서 보호받고 마음껏 꿈을 펼쳐나갈 수 있도록<br>우리 아이들의 손을 붙잡아 주세요.
							</p>
							<a href="${contextPath}/service.jsp" title="해외아동 후원 페이지로 이동" class="moresee">자세히 보기</a> <a href="${contextPath}/service.jsp" title="후원 페이지로 이동" class="supportBtn">후원하기</a>
						</div>
					</div>
				</div>


				<div class="accordion">
					<div class="accordion_tab">
						해외사업후원
						<div class="accordion_arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</div>
					<div id="foreignSup" class="accordion_content">
						<div class="textWrap">
							<p>
								아이들이 건강하게 자랄수 있는<br>마을을 함께 만들어 갑니다.
							</p>
							<a href="${contextPath}/service.jsp" title="해외아동 후원 페이지로 이동" class="moresee">자세히 보기</a> <a href="${contextPath}/service.jsp" title="후원 페이지로 이동" class="supportBtn">후원하기</a>
						</div>

					</div>
				</div>

				<div class="accordion">
					<div class="accordion_tab">
						국내사업후원
						<div class="accordion_arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</div>
					<div id="domesticSup" class="accordion_content">
						<div class="textWrap">
							<p>
								어려운 환경에 처한 아이들이 건강하게<br>성장해 꿈을 이룰 수 있도록 지원합니다.
							</p>
							<a href="${contextPath}/service.jsp" title="국내사업후원 페이지로 이동" class="moresee">자세히 보기</a> <a href="${contextPath}/service.jsp" title="후원 페이지로 이동" class="supportBtn">후원하기</a>
						</div>

					</div>
				</div>


				<div class="accordion">
					<div class="accordion_tab">
						긴급구호사업후원
						<div class="accordion_arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</div>

					<div id="emergencySup" class="accordion_content">
						<div class="textWrap">
							<p>
								자연재해, 전쟁 등으로 생명과 일상을<br>위협받는 이들의 일상의 회복을 돕습니다.
							</p>
							<a href="${contextPath}/service.jsp" title="긴급구호사업 페이지로 이동" class="moresee">자세히 보기</a> <a href="${contextPath}/service.jsp" title="후원 페이지로 이동" class="supportBtn">후원하기</a>
						</div>
					</div>
				</div>

				<div class="accordion">
					<div class="accordion_tab">
						북한사업후원
						<div class="accordion_arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</div>
					<div id="southKoreaSup" class="accordion_content">
						<div class="textWrap">
							<p>
								심각한 식량 문제에 처한 북한 어린이와<br>주민의 근본적인 식량문제 해결을 돕습니다.
							</p>
							<a href="${contextPath}/service.jsp" title="북한사업 페이지로 이동" class="moresee">자세히 보기</a> <a href="${contextPath}/service.jsp" title="후원 페이지로 이동" class="supportBtn">후원하기</a>
						</div>

					</div>
				</div>

				<div class="accordion" id="specialSupport">
					<div class="accordion_tab">
						특별후원
						<div class="accordion_arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</div>

					<div id="contentLeft" class="accordion_content">
						<div class="specialWrap" id="specialBg">
							<div class="accordion_item" id="comSupport">
								<p class="item_title">기업후원</p>
								<p>
									지구촌 아이들과 함게하는 기업,<br>따뜻함을 나누면 사랑으로 전해집니다.
								</p>
								<a href="${contextPath}/service.jsp" title="기업후원 페이지로 이동" class="moresee">자세히 보기</a> <a href="${contextPath}/service.jsp" title="기업후원 페이지 이동" class="supportBtn">후원하기</a>
							</div>
							<div class="accordion_item" id="hSupport">
								<p class="item_title">고액후원</p>
								<p>
									다음 세대를 위한 고귀한 꿈,<br>후원자님의 이름이 어린이들의 희망이 됩니다.
								</p>
								<a href="${contextPath}/service.jsp" title="고액후원 페이지로 이동" class="moresee">자세히 보기</a> <a href="${contextPath}/service.jsp" title="고액후원 페이지 이동" class="supportBtn">후원하기</a>
							</div>
						</div>

					</div>
				</div>


			</div>
			<!-- //mobileType -->

		</div>
		<!-- //contentWrap -->
		<script src="${contextPath}/js/mmenu-light.js"></script>
		<script src="${contextPath}/js/hidemenu.js"></script>
		<%@ include file="../footer.jsp"%>
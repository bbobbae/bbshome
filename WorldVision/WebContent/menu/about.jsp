<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="정보배">
<title>소개</title>
<link rel="stylesheet" href="${contextPath}/css/common.css">
<link rel="stylesheet" href="${contextPath}/css/about.css">
<link rel="stylesheet" href="${contextPath}/css/mmenu-light.css">
<link rel="stylesheet" href="${contextPath}/css/mburger.css">
<link rel="stylesheet" href="${contextPath}/css/swiper.css">
<script src="https://kit.fontawesome.com/9d91dfe9ed.js" crossorigin="anonymous"></script>
</head>
<body>
	<div id="my-page">
		<%@ include file="../header.jsp"%>

		<div class="swiper-container">
			<div class="parallax-bg" data-swiper-parallax="-23%"></div>
			<div class="swiper-wrapper">
				<div class="swiper-slide">
					<div class="title" data-swiper-parallax="-300">
						월드비전,<br> 믿을 수 있는 이유
					</div>
					<div class="text" data-swiper-parallax="-100">
						월드비전 사업장을 직접 방문한 후원자의 이야기를 통해<br> 월드비전 사업의 전문성과 효과성,<br> 특별히 후원금을 믿고 맡길 수 있는지 확인해보세요.
					</div>
				</div>

				<div class="swiper-slide" id="WVabout">
					<div class="title" data-swiper-parallax="-300" data-swiper-parallax-opacity="0">월드비전 소개</div>
					<div class="text" data-swiper-parallax="-100">
						월드비전은 전세계 가장 취약한 아동, 가정,<br> 지역사회가 빈곤한 불평등에서 벗어나도록<br> 하나님의 사랑을 실천하고 모든 파트너와<br> 함께 지속 가능안 변화를 만들어가는 글로벌<br> NGO입니다.
					</div>
				</div>

			</div>
			<!-- Add Pagination -->
			<div class="swiper-pagination swiper-pagination-white"></div>
			<!-- Add Navigation -->
			<div class="swiper-button-prev swiper-button-white"></div>
			<div class="swiper-button-next swiper-button-white"></div>
		</div>

		<div id="contentReason">
			<div>
				<p>
					월드비전,<br> 믿을 수 있는 이유
				</p>
				<p>
					월드비전 사업장을 직접 방문한 후원자의 이야기를 통해<br> 월드비전 사업의 전문성과 효과성,<br> 특별히 후원금을 믿고 맡길 수 있는지 확인해보세요.
				</p>
			</div>

		</div>

		<div id="contentWrap">
			<div id="contentBusiness" class="up-on-scroll">
				<p>
					자립의 환경을 만드는 <span>지역 개발 사업</span>
				</p>
				<p>
					가난의 근본 원인을 해결하기 위해 아동과 가족, 지역사회 빈곤층 전체의<br> 자립을 목표로 분야별 사업을 진행합니다.
				</p>
				<ul>
					<li><img src="${contextPath}/menu/about_images/icon01.png" alt="생존/성장 아이콘">
						<p>생존/성장</p></li>
					<li><img src="${contextPath}/menu/about_images/icon02.png" alt="보건위생 아이콘">
						<p>보건위생</p></li>
					<li><img src="${contextPath}/menu/about_images/icon03.png" alt="기초교육 아이콘">
						<p>기초교육</p></li>
				</ul>
				<ul>
					<li><img src="${contextPath}/menu/about_images/icon04.png" alt="정서적 성장 아이콘">
						<p>정서적 성장</p></li>
					<li><img src="${contextPath}/menu/about_images/icon05.png" alt="생계유지 아이콘">
						<p>생계유지</p></li>
					<li><img src="${contextPath}/menu/about_images/icon06.png" alt="아동 보호 교육 아이콘">
						<p>아동 보호 교육</p></li>
				</ul>
			</div>

			<div id="contentIntro" class="up-on-scroll">
				<div id="leftText">
					<p>
						월드비전 <span>소개</span>
					</p>
					<p>
						월드비전은 전세계 가장 취약한 아동, 가정,<br> 지역사회가 빈곤한 불평등에서 벗어나도록<br> 하나님의 사랑을 실천하고 모든 파트너와<br> 함께 지속 가능안 변화를 만들어가는 글로벌<br> NGO입니다.
					</p>
				</div>
			</div>

			<div id="contentGraph" class="up-on-scroll">
				<p>
					후원금의 86%를 가장 <span>가치있는 </span>일에 사용합니다.
				</p>
				<p>후원자님의 소중한 후원금은 아동/가정/지역사회의 변화를 위해 사용합니다.</p>
				<img src="${contextPath}/menu/about_images/graph.png" alt="2018 월드비전 재무보고 그래프">
			</div>

			<div id="contentReview" class="up-on-scroll">
				<div>
					<p>
						후원금이 <span>어떻게 누구에게</span><br> 사용되는지 보고싶어서
					</p>
					<p>
						제가 낸 돈 중에 얼마의 금액이 어떤 일에<br> 쓰였는지 보고 싶었어요.<br> 직접 보고 '아, 내 후원금이<br> 제대로 쓰이고 있구나' 생각했어요.<br> 스리랑카 사업장 방문 차 O 규 후원자
					</p>
				</div>

			</div>

			<div id="contentStory" class="up-on-scroll">
				<div id="storyColor">
					<p>
						더 알고 싶은 다른 <span>이야기</span> 가 있으신가요?
					</p>
					<div id="leftBox">
						내 삶을 바꾼 월드비전<br>나눔의 월드비전<br>함께할 월드비전 <a href="${contextPath}/menu/campaign.jsp" title="후원자 참여 페이지 이동">확인하기</a>
					</div>

					<div id="rightBox">
						월드비전이 진행하는<br>다양한 사업<br> 만나러 가기 <a href="${contextPath}/menu/business.jsp" title="사업안내 페이지 이동">바로가기</a>
					</div>
				</div>
			</div>
		</div>
		<!-- //contentWrap -->
		<script src="${contextPath}/js/mmenu-light.js"></script>
		<script src="${contextPath}/js/hidemenu.js"></script>
		<script type="text/javascript" src="${contextPath}/js/swiper.min.js"></script>
		<script type="text/javascript" src="${contextPath}/js/about.js"></script>

		<%@ include file="../footer.jsp"%>
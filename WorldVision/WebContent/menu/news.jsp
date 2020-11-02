<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>소식</title>
<link rel="stylesheet" href="${contextPath}/css/common.css">
<link rel="stylesheet" href="${contextPath}/css/news.css">
<link rel="stylesheet" href="${contextPath}/css/mmenu-light.css">
<link rel="stylesheet" href="${contextPath}/css/mburger.css">
<link rel="stylesheet" href="${contextPath}/css/swiper.css">


<script type="text/javascript" src="${contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${contextPath}/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="${contextPath}/js/bxslider.js"></script>
<script type="text/javascript" src="${contextPath}/js/swiper.min.js"></script>
<script type="text/javascript" src="${contextPath}/js/Carousel.js"></script>
<script type="text/javascript" src="${contextPath}/js/main.js"></script>
<script src="https://kit.fontawesome.com/9d91dfe9ed.js" crossorigin="anonymous"></script>
<script type="text/javascript" src="${contextPath}/js/news.js"></script>

</head>
<body>

	<div id="my-page">
		<%@ include file="../header.jsp"%>

		<!-- contentWrap -->
		<div id="contentWrap">
			<!-- story -->
			<div id="storyWrap" class="content">
				<p class="topTitle">월드비전 이야기</p>
				<p class="smallTitle">당신의 참여로 모두의 내일이 변화합니다.</p>
				<div id="slideWrap">
					<ul class="story">
						<li><a href="${contextPath}/service.jsp" title="탄자니아에서 만난 스토리 페이지 이동"> <img src="${contextPath}/menu/news_images/bg7.jpg">
								<div class="imgText">
									<p>"가난해도 이렇게까지 없다니요"</p>
									<p>탄자니아에서 만난 조이스</p>
								</div>
						</a></li>
						<li><a href="${contextPath}/service.jsp" title="서아프리카 대륙 스토리 페이지 이동"> <img src="${contextPath}/menu/news_images/bg9.jpg">
								<div class="imgText">
									<p>애볼라의 아픈 경험,</p>
									<p>코로나-19를 대비합니다.</p>
								</div>
						</a></li>
						<li><a href="${contextPath}/service.jsp" title="시리아 내전 9주기 페이지 이동"> <img src="${contextPath}/menu/news_images/bg4.jpg">
								<div class="imgText">
									<p>시리아 내전 9주기,</p>
									<p>아이들이 뻇긴 일상을 되찾아 주세요.</p>
								</div>
						</a></li>
						<li><a href="${contextPath}/service.jsp" title="어른이 된 후원아동 스토리 페이지 이동"> <img src="${contextPath}/menu/news_images/bg2.jpg">
								<div class="imgText">
									<p>[어른이 된 후원아동],</p>
									<p>당신은 후원자가 있나요?</p>
								</div>
						</a></li>
						<li><a href="${contextPath}/service.jsp" title="꿈날개클럽 면접 스토리 페이지 이동"> <img src="${contextPath}/menu/news_images/bg12.PNG">
								<div class="imgText">
									<p>"코로나도 우리의 꿈을 막을 순 없다."</p>
									<p>2020 꿈날개클럽 면접 후기</p>
								</div>
						</a></li>
						<li><a href="${contextPath}/service.jsp" title="아프리카에서 온 마스크 스토리 페이지 이동"> <img src="${contextPath}/menu/news_images/mask_01.jpg">
								<div class="imgText">
									<p>아프리카에서 날아온 마스크</p>
									<p>"이제는 우리가 도울게요"</p>
								</div>
						</a></li>
						<li><a href="${contextPath}/service.jsp" title="사랑의 도시락 스토리 페이지 이동"> <img src="${contextPath}/menu/news_images/bg13.PNG">
								<div class="imgText">
									<p>우리 아이들을 키워준 사랑의 도시락,</p>
									<p>뭐라도 해야죠!</p>
								</div>
						</a></li>
						<li><a href="${contextPath}/service.jsp" title="성장소식지 스토리 페이지 이동"> <img src="${contextPath}/menu/news_images/bg6.jpg">
								<div class="imgText">
									<p>꾹꾹 고사리손아이들이 해마다 보내는,</p>
									<p>'성장소식지'</p>
								</div>
						</a></li>
					</ul>
				</div>


			</div>

			<!-- news -->
			<div id="news">
				<div id="titleBox">
					<p class="topTitle">새로운 소식과 보도자료를 만나보세요.</p>
					<p class="smallTitle">나눔으로 만나는 희망, 월드비전이 새로운 소식을 전합니다.</p>
					<a href="${contextPath}/service.jsp" title="공지사항 페이지로 이동"><i class="fas fa-plus"></i></a>
				</div>
				<!-- newsBox -->
				<div id="newsBox">
					<ul>
						<li id="newsLeft"><a href="${contextPath}/service.jsp">
								<p>공지사항</p>
								<p>20/05/29</p>
								<p>
									케냐 와지르, 앙구라이 지역개발사업장 홍수/산사태 피해현황<br>
									<br> 4월 중순부터 계속된 폭우로 인해 월드비전 와지르(167967), 앙구라이(192720) 지역개발사업장의 일부 피해가 확인되어 알려드립니다.
								</p>
						</a></li>
						<li><a href="${contextPath}/service.jsp">
								<p>공지사항</p>
								<p>20/05/19</p>
								<p>
									[새소식]월드비전 70주년 기념 아동미래연구 공모전 안내<br>
									<br> 월드비전은 70주년을 맞이하여 전세계 아동청소년, 특히 가장 취약한 아동청소년의 미래를 지원하는 데 기여할 연구를 아래와 같이 공모지원하고자 합니다.
								</p>
						</a></li>
						<li><a href="${contextPath}/service.jsp">
								<p>공지사항</p>
								<p>20/04/20</p>
								<p>
									[공지]시스템 교체에 따른 상담서비스 한시적 중단 알림<br>
									<br> 월드비전을 통해 나눔을 실천해 주셔서 감사합니다. 월드비전은 더 나은 서비스로 후원자님을 만나기 위해 4/21(화)부터 4/22(수)까지 전산 시스템 점검과 교체를 진행합니다.
								</p>
						</a></li>
						<li id="lastNews"><a href="${contextPath}/service.jsp">
								<p>공지사항</p>
								<p>20/02/21</p>
								<p>
									[1-8차 대응 중간보고] 코로나 바이러스 감염증-19 국내 긴급 지원현황<br>
									<br> 2019년 12월 중국 우한에서 처음 발생한 코로나바이러스-19가 최근 전국적인 확산세를 보임에 따라 월드비전은 취약계층 가정과 아이들을 위한 호흡기 질환 예방 키트 및 긴급 지원금 물품을 전구 20개 지연본부를 통해 전달합니다.
								</p>
						</a></li>
					</ul>
				</div>
				<!-- //newsBox -->

			</div>
			<!-- //news -->



			<!-- newsletter -->
			<div id="newsletter">
				<div id="newsletterBox">
					<p class="topTitle">소식지</p>
					<p class="smallTitle">세계곳곳의 생생한 사업현장 및 다양한 행사, 감동적인 후원이야기가 담겨있습니다.</p>
					<a href="${contextPath}/service.html" title="소식지 페이지로 이동"><i class="fas fa-plus" aria-hidden="true"></i></a>
				</div>


				<div class="slider">
					<div class="slider__inner">
						<!-- Slides -->
						<div class="slider__item">
							<div class="slider__item-container">
								<img src="${contextPath}/menu/news_images/news5.PNG" class="slider__item-img">
								<div class="slider__item-datas">
									<span>2019년 봄</span>
								</div>
							</div>
						</div>
						<div class="slider__item">
							<div class="slider__item-container">
								<img src="${contextPath}/menu/news_images/news6.PNG" class="slider__item-img">
								<div class="slider__item-datas">
									<span>2018년 겨울</span>
								</div>
							</div>
						</div>
						<div class="slider__item">
							<div class="slider__item-container">
								<a href="https://e.issuu.com/embed.html?d=2019_________ebook__&u=worldvision" target="_blank"> 
								<img src="${contextPath}/menu/news_images/news1.PNG" class="slider__item-img">
								</a>
								<div class="slider__item-datas">
									<span>2020년 봄</span>
								</div>

							</div>
						</div>
						<div class="slider__item">
							<div class="slider__item-container">
								<a href="https://e.issuu.com/embed.html?d=wv________191210&pageLayout=singlePage&u=worldvision" target="_blank"> 
								<img src="${contextPath}/menu/news_images/news2.PNG" class="slider__item-img">
								</a>
								<div class="slider__item-datas">
									<span>2019년 겨울</span>
								</div>
							</div>
						</div>
						<div class="slider__item">
							<div class="slider__item-container">
								<a href="https://e.issuu.com/embed.html?d=wv___________190903&u=worldvision" target="_blank"> 
								<img src="${contextPath}/menu/news_images/news3.PNG" class="slider__item-img">
								</a>
								<div class="slider__item-datas">
									<span>2019년 가을</span>
								</div>
							</div>
						</div>
						<div class="slider__item">
							<div class="slider__item-container">
								<a href="https://issuu.com/worldvision/docs/wv19_summer?e=1126377/70566951" target="_blank"> 
								<img src="${contextPath}/menu/news_images/news4.PNG" class="slider__item-img">
								</a>
								<div class="slider__item-datas">
									<span>2019년 여름</span>
								</div>
							</div>
						</div>

						<!-- Slider Controls -->
						<div class="slider__controls"></div>
					</div>
				</div>
			</div>
			<!-- //newsletter -->
		</div>
		<!-- //contentWrap -->
		<script src="${contextPath}/js/mmenu-light.js"></script>
		<script src="${contextPath}/js/hidemenu.js"></script>
		<%@ include file="../footer.jsp"%>
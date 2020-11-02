<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="정보배">
<title>사업안내</title>
<link rel="stylesheet" href="${contextPath}/css/common.css">
<link rel="stylesheet" href="${contextPath}/css/business.css">
<link rel="stylesheet" href="${contextPath}/css/mmenu-light.css">
<link rel="stylesheet" href="${contextPath}/css/mburger.css">
<link rel="stylesheet" href="${contextPath}/css/accordion.css">


<script type="text/javascript" src="${contextPath}/js/jquery-2.1.1.min.js"></script>
<script type="text/javascript" src="${contextPath}/js/counter.js"></script>
<script type="text/javascript" src="${contextPath}/js/accordion.js"></script>
<script src="https://kit.fontawesome.com/9d91dfe9ed.js" crossorigin="anonymous"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
<script src="${contextPath}/js/jquery.counterup.min.js"></script>
</head>
<body>
	<div id="my-page">
		<%@ include file="../header.jsp"%>

		<!-- businessTop -->
		<div id="businessTop">
			<p>월드비전 사업안내</p>
			<p>
				따뜻한 마음을 모아 도움이 필요한 마을과 지역의<br>온전한 자립을 돕습니다.
			</p>
		</div>
		<!-- //businessTop -->


		<!-- contentWrap -->
		<div id="contentWrap">
			<!-- pcType -->
			<div id="pcType">
				<div class="BusinessContent" id="foreign">
					<div class="center">
						<p class="businessTitle">해외사업</p>
						<p class="businessText">
							해외개발사업은 빈곤의 현상뿐만 아니라, 근본 문제까지 해결합니다.<br>마을 스스로 일어설 수 있도록<br>지역 아동과 주민, 정부가 주도하고 협력하게끔 이끌며 평균 15년간 지속적으로 지원합니다.<br>이처럼 월드비전의 해외사업은 아이들이 처한 상황에 맞춰 체계적으로 이루어집니다.
						</p>
						<p class="countText">
							2019년 <strong>해외사업</strong> 의 혜택을 받은 사람<br> <span class="counter">3,790,030</span> 명
						</p>
						<div class="contentTab" id="foreignTab">
							<img src="${contextPath}/menu/business_images/22.PNG" alt="해외사업" id="foreignPhoto">

							<ul>
								<li><a href="${contextPath}/service.jsp"><img src="${contextPath}/menu/business_images/home.jpeg" alt="지역개발사업">지역개발사업</a></li>
								<li><a href="${contextPath}/service.jsp"><img src="${contextPath}/menu/business_images/science.jpeg" alt="분야별특별사업">분야별특별사업</a></li>
								<li><a href="${contextPath}/service.jsp"><img src="${contextPath}/menu/business_images/emergency.jpeg" alt="국제질병퇴치">국제질병퇴치</a></li>
								<li><a href="${contextPath}/service.jsp"><img src="${contextPath}/menu/business_images/see.jpeg" alt="재난대응사업">재난대응사업</a></li>
								<li><a href="${contextPath}/service.jsp"><img src="${contextPath}/menu/business_images/food.jpeg" alt="식량위기대응사업">식량위기대응사업</a></li>
								<li><a href="${contextPath}/service.jsp"><img src="${contextPath}/menu/business_images/building.jpeg" alt="취약지역지원사업">취약지역지원사업</a></li>
							</ul>
						</div>
					</div>
				</div>

				<div class="BusinessContent" id="domestic">
					<div class="center">
						<p class="businessTitle">국내사업</p>
						<p class="businessText">
							빈곤이라는무거운 현실로꿈을 사치라 여겼을 아이들은<br>월드비전의 '꿈꾸는 아이들' 사업을 통해<br>갑작스러운 위기와배고픈 현시레서 벗어나 꿈을 키워나가고 있습니다. <br>월드비전의 꿈꾸는 아이들 사업은 아이들이 자신의 꿈을 발견하고 <br>희망을 가지고 도전할 수 있도록 이끌어주는 월드비전의 국내 대표 사업입니다.
						</p>
						<p class="countText">
							2019년 <strong>국내사업</strong> 의 혜택을 받은 사람<br> <span class="counter">771,530</span> 명
						</p>

						<div class="contentTab" id="domesticTab">
							<ul>
								<li><a href="${contextPath}/service.jsp"><img src="${contextPath}/menu/business_images/truck.jpeg" alt="사랑의도시락사업">사랑의도시락사업</a></li>
								<li><a href="${contextPath}/service.jsp"><img src="${contextPath}/menu/business_images/flower.jpeg" alt="꽃때말교육사업">꽃때말교육사업</a></li>
								<li><a href="${contextPath}/service.jsp"><img src="${contextPath}/menu/business_images/kid.jpeg" alt="위기아동지원사업">위기아동지원사업</a></li>
								<li><a href="${contextPath}/service.jsp"><img src="${contextPath}/menu/business_images/children.jpeg" alt="아동옹호사업">아동옹호사업</a></li>
								<li><a href="${contextPath}/service.jsp"><img src="${contextPath}/menu/business_images/baby.jpeg" alt="꿈꾸는 아이들">꿈꾸는 아이들</a></li>

							</ul>

							<img src="${contextPath}/menu/business_images/donation05.jpg" alt="국내사업" id="businessPhoto">


						</div>
					</div>
				</div>

				<div class="BusinessContent" id="north">
					<div class="center">
						<p class="businessTitle">북한사업</p>
						<p class="businessText">
							영양가 있는 음식을 먹고, 깨끗한 물을 마시고, 스스로 먹거리를 만드는 것, <br>한 아이가 건강하게 자라기 위한 가장기본적인 필요를채우는 월드비전 북한사업.<br> 1994년부터 지금까지 꾸준히 북한 내에도 많은 도움이 필요한 지역의 아이들을 돕고 있습니다.
						</p>

						<p class="countText">
							2019년 <strong>북한사업</strong> 의 혜택을 받은 사람<br> <span class="counter">98,023</span> 명
						</p>
						<div class="contentTab" id="northTab">
							<img src="${contextPath}/menu/business_images/north4.PNG" alt="북한사업" id="northPhoto">

							<ul>
								<li><a href="${contextPath}/service.jsp"><img src="${contextPath}/menu/business_images/cow.jpeg" alt="농업사업">농업사업</a></li>
								<li><a href="${contextPath}/service.jsp"><img src="${contextPath}/menu/business_images/aid.jpeg" alt="일반구호사업">일반구호사업</a></li>
								<li><a href="${contextPath}/service.jsp"><img src="${contextPath}/menu/business_images/people.jpeg" alt="농업교육사업">농업교육사업</a></li>
								<li><a href="${contextPath}/service.jsp"><img src="${contextPath}/menu/business_images/flower2.jpeg" alt="꽃피는마을사업">꽃피는마을사업</a></li>
							</ul>
						</div>
					</div>
				</div>

				<div class="BusinessContent" id="advocacy">
					<div class="center">
						<p class="businessTitle">옹호사업</p>
						<p class="businessText">
							월드비전의 긍정적인 변화를 이끈 주인공은 바로 여러분입니다.<br> 힘든 상황 속에서도 후원아동을 끝까지 지지해준 후원자 여러분, 여러분의 참여와 후원으로<br> 우리 아이들은 마음껏 공부하고, 건강하게 꿈을 키울 수 잇습니다. <br> 모든 아이가 평범한 일상을 되찾고, 당연한 것들을 누릴 수 있도록 우리의 노력은 계속될 것입니다.
						</p>
						<p class="countText">
							2019년 <strong></strong> 옹호사업의 혜택을 받은 사람<br> <span class="counter">5474,477</span> 명
						</p>
						<div class="contentTab" id="advocacyTab">
							<ul>
								<li><a href="${contextPath}/service.jsp"><img src="${contextPath}/menu/business_images/world.jpeg" alt="세계시민교육">세계시민교육</a></li>
								<li><a href="${contextPath}/service.jsp"><img src="${contextPath}/menu/business_images/document.jpeg" alt="캠페인/정책활동">캠페인/정책활동</a></li>
							</ul>

							<img src="${contextPath}/menu/business_images/45.PNG" alt="옹호사업" id="advocacyPhoto">


						</div>
					</div>
				</div>

			</div>
			<!--// pcType -->

			<!-- mobileType -->
			<div id="mobileType" class="wrapper">
				<div class="accordion active">
					<div class="accordion_tab active">
						해외사업
						<div class="accordion_arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</div>
					<div id="foreign" class="kidSupport accordion_content">
						<div class="textWrap">
							<p class="businessTitle">
								해외개발사업은 마을 스스로 일어설 수 있도록<br>지역 아동과 주민, 정부가 주도하고 협력하게끔 이끌며 평균 15년간 지속적으로 지원합니다
							</p>
							<div class="detailBtn">
								<a href="${contextPath}/service.jsp">지역개발사업</a> <a href="${contextPath}/service.jsp">분야별특별사업</a> <a href="${contextPath}/service.jsp">국제질병퇴치</a> <a href="${contextPath}/service.jsp">재난대응사업</a> <a href="${contextPath}/service.jsp">식량위기대응사업</a> <a href="${contextPath}/service.jsp">취약지역지원사업</a>
							</div>
						</div>
					</div>
				</div>
				<div class="accordion">
					<div class="accordion_tab">
						국내사업
						<div class="accordion_arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</div>
					<div id="domestic" class="kidSupport accordion_content">
						<div class="textWrap">
							<p class="businessTitle">
								월드비전의 꿈꾸는 아이들 사업은 아이들이 자신의 꿈을 발견하고 <br>이끌어주는 월드비전의 국내 대표 사업입니다.
							</p>
							<div class="detailBtn">
								<a href="${contextPath}/service.jsp">사랑의도시락사업</a> <a href="${contextPath}/service.jsp">꽃때말교육사업</a> <a href="${contextPath}/service.jsp">위기아동지원사업</a> <a href="${contextPath}/service.jsp">아동옹호사업</a> <a href="${contextPath}/service.jsp">꿈꾸는 아이들</a>
							</div>
						</div>
					</div>
				</div>

				<div class="accordion">
					<div class="accordion_tab">
						북한사업
						<div class="accordion_arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</div>
					<div id="north" class="kidSupport accordion_content">
						<div class="textWrap">
							<p class="businessTitle">
								영양가 있는 음식을 먹고, 깨끗한 물을 마시고, 스스로 먹거리를 만드는 것, <br> 가장기본적인 필요를 채우는 월드비전 북한사업.
							</p>
							<div class="detailBtn">
								<a href="${contextPath}/service.jsp">농업사업</a> <a href="${contextPath}/service.jsp">일반구호사업</a> <a href="${contextPath}/service.jsp">농업교육사업</a> <a href="${contextPath}/service.jsp">꽃피는마을사업</a>
							</div>
						</div>
					</div>
				</div>

				<div class="accordion">
					<div class="accordion_tab">
						옹호사업
						<div class="accordion_arrow">
							<i class="fas fa-angle-down"></i>
						</div>
					</div>
					<div id="advocacy" class="kidSupport accordion_content">
						<div class="textWrap">
							<p class="businessTitle">
								여러분의 참여와 후원으로<br> 우리 아이들은 마음껏 공부하고, 건강하게 꿈을 키울 수 잇습니다. <br> 모든 아이가 당연한 것들을 누릴 수 있도록 우리의 노력은 계속될 것입니다.
							</p>
							<div class="detailBtn">
								<a href="${contextPath}/service.jsp">세계시민교육</a> <a href="${contextPath}/service.jsp">캠페인/정책활동</a>
							</div>
						</div>
					</div>
				</div>

			</div>
			<!-- //mobileType -->
		</div>
		<!-- //contentWrap -->
	</div>

	<script src="${contextPath}/js/mmenu-light.js"></script>
	<script src="${contextPath}/js/hidemenu.js"></script>
	<script src="//cdnjs.cloudflare.com/ajax/libs/waypoints/2.0.3/waypoints.min.js"></script>
	<script src="${contextPath}/js/jquery.counterup.min.js"></script>
	<%@ include file="../footer.jsp"%>
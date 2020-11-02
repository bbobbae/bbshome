<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%=request.getContextPath()%>"></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="정보배">
<title>캠페인</title>
<link rel="stylesheet" href="${contextPath}/css/common.css">
<link rel="stylesheet" href="${contextPath}/css/campaign.css">
<link rel="stylesheet" href="${contextPath}/css/mmenu-light.css">
<link rel="stylesheet" href="${contextPath}/css/mburger.css">
<link rel="stylesheet" href="${contextPath}/css/accordion.css">

<script type="text/javascript" src="${contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${contextPath}/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="${contextPath}/js/bxslider.js"></script>
<script type="text/javascript" src="${contextPath}/js/accordion.js"></script>
<script src="https://kit.fontawesome.com/9d91dfe9ed.js" crossorigin="anonymous"></script>
<script>
$(document).ready(function(){
	
	$('ul.tabs li').click(function(){
		var tab_id = $(this).attr('data-tab');

		$('ul.tabs li').removeClass('current');
		$('.tab-content').removeClass('current');

		$(this).addClass('current');
		$("#"+tab_id).addClass('current');
	})

})
</script>
</head>
<body>
	<div id="my-page">
		<%@ include file="../header.jsp"%>

		<!-- topTitle -->
		<div id="topTitle">
			<p class="campaignTitle">캠페인</p>
			<p class="smallTitle">
				"삶이 전쟁터 같지만<br>나눌 때 빛나는 순간도 있잖아요.<br>서로에게 <span>빛나는</span> 순간이 되어주세요."
			</p>
			<div id="sliderWrap">
				<ul class="campaignSlider camSlider">
					<li><a href="${contextPath}/service.jsp" title="마스크캠페인 페이지 이동"> <img src="${contextPath}/menu/campaign_images/da.PNG">
							<div>
								<p>자꾸만 좁아지는 다현이의 세상</p>
								<p>국내사업 후원 캠페인</p>
							</div>
					</a></li>
					<li><a href="${contextPath}/service.jsp" title="해외사업 캠페인 페이지 이동"> <img src="${contextPath}/menu/campaign_images/bg-sec03.jpg">
							<div>
								<p>막다른 곳에 몰린 아이들을 구해주세요.</p>
								<p>해외사업 후원 캠페인</p>
							</div>
					</a></li>
					<li><a href="${contextPath}/service.jsp" title="전쟁 피해아동 지지서명 페이지"> <img src="${contextPath}/menu/campaign_images/con_01_2.jpg">
							<div>
								<p>전쟁 피해 아동의 하루</p>
								<p>지지서명을 통해 지킬 수 있습니다.</p>
							</div>
					</a></li>
					<li><a href="${contextPath}/service.jsp"> <img src="${contextPath}/menu/campaign_images/support_img.jpg">
							<div>
								<p>월드비전 엽서그리기 대회</p>
								<p>네가 그린 꿈</p>
							</div>
					</a></li>
					<li><a href="${contextPath}/service.jsp" title="해외소녀들을 위한 캠페인"> <img src="${contextPath}/menu/campaign_images/girls.jpeg" alt="">
							<div>
								<p>해외 소녀들을 위한</p>
								<p>면생리대 만들기 캠페인</p>
							</div>
					</a></li>
					<li><a href="${contextPath}/service.jsp" title="코로나 현황"> <img src="${contextPath}/menu/campaign_images/corona.PNG">
							<div>
								<p>아프리카 대륙까지 번진 코로나-19</p>
								<p>이 시간 세계현황</p>
							</div>
					</a></li>
					<li><a href="${contextPath}/service.jsp" title="국내사업 후원 캠페인">
							<div>
								<p>백혈병으로 멈춰버린 은주의 시간</p>
								<p>국내사업 후원 캠페인</p>
							</div>
					</a> <img src="${contextPath}/menu/campaign_images/con03_bg_b.jpg"></li>
					<li><a href="${contextPath}/service.jsp" title="가정폭력 피해아동 지원 캠페인"> <img src="${contextPath}/menu/campaign_images/con02_bg.jpg">
							<div>
								<p>가정폭력 피해아동 지원 캠페인</p>
								<p>가장 무서운곳, 우리집</p>
							</div>
					</a></li>
				</ul>
				<ul class="newCpSlider camSlider">
					<li><a href="${contextPath}/service.jsp" title="마스크캠페인 페이지 이동"> <img src="${contextPath}/menu/campaign_images/da.PNG">
							<div>
								<p>자꾸만 좁아지는 다현이의 세상</p>
								<p>국내사업 후원 캠페인</p>
							</div>
					</a></li>
					<li><a href="${contextPath}/service.jsp" title="해외사업 캠페인 페이지 이동"> <img src="${contextPath}/menu/campaign_images/bg-sec03.jpg">
							<div>
								<p>막다른 곳에 몰린 아이들을 구해주세요.</p>
								<p>해외사업 후원 캠페인</p>
							</div>
					</a></li>
					<li><a href="${contextPath}/service.jsp" title="전쟁 피해아동 지지서명 페이지"> <img src="${contextPath}/menu/campaign_images/con_01_2.jpg">
							<div>
								<p>전쟁 피해 아동의 하루</p>
								<p>지지서명을 통해 지킬 수 있습니다.</p>
							</div>
					</a></li>
					<li><a href="${contextPath}/service.jsp"> <img src="${contextPath}/menu/campaign_images/support_img.jpg">
							<div>
								<p>월드비전 엽서그리기 대회</p>
								<p>네가 그린 꿈</p>
							</div>
					</a></li>
					<li><a href="${contextPath}/service.jsp" title="해외소녀들을 위한 캠페인"> <img src="${contextPath}/menu/campaign_images/girls.jpeg" alt="">
							<div>
								<p>해외 소녀들을 위한</p>
								<p>면생리대 만들기 캠페인</p>
							</div>
					</a></li>
					<li><a href="${contextPath}/service.jsp" title="코로나 현황"> <img src="${contextPath}/menu/campaign_images/corona.PNG">
							<div>
								<p>아프리카 대륙까지 번진 코로나-19</p>
								<p>이 시간 세계현황</p>
							</div>
					</a></li>
					<li><a href="${contextPath}/service.jsp" title="국내사업 후원 캠페인">
							<div>
								<p>백혈병으로 멈춰버린 은주의 시간</p>
								<p>국내사업 후원 캠페인</p>
							</div>
					</a> <img src="${contextPath}/menu/campaign_images/con03_bg_b.jpg"></li>
					<li><a href="${contextPath}/service.jsp" title="가정폭력 피해아동 지원 캠페인"> <img src="${contextPath}/menu/campaign_images/con02_bg.jpg">
							<div>
								<p>가정폭력 피해아동 지원 캠페인</p>
								<p>가장 무서운곳, 우리집</p>
							</div>
					</a></li>
				</ul>
			</div>


		</div>
		<!-- //topTitle -->

		<div id="programWrap">
			<p id="programTitle" class="campaignTitle">후원자 프로그램</p>
			<p class="smallTitle">
				월드비전 후원자,<br>후원의 진정한 의미와 변화의 기쁨을 누릴 수 있습니다.
			</p>
		</div>

		<!-- PcContentWrap -->
		<div id="PcContentWrap" class="tabmenu">
			<ul class="tabs">
				<li class="tab-link current" data-tab="tab-1">비전메이커	</li>
				<li class="tab-link" data-tab="tab-2">패밀리데이</li>
				<li class="tab-link" data-tab="tab-3">해외사업장 방문</li>
				<li class="tab-link" data-tab="tab-4">번역 봉사단</li>
			</ul>	
			
			
			<div id="tab-1" class="tab-content current">
				<p class="camTitle">
					월드비전의 소중한 후원자,<br>여러분이 월드비전 홍보대사입니다.
				</p>
				<p class="smTitle">비전메이커 후원자 홍보단</p>
				<img src="${contextPath}/menu/campaign_images/cam1.PNG"> 
				<span class="about imgText">월드비전 비전메이커는 월드비전의 후원자홍보단으로, 월드비전과 함께 나눔의 기쁨을 주변에 알리는 가슴 뛰는 일을 합니다.
					<br> 일상 속에서 온라인, 오프라인 활동을 통해 월드비전을 알릴 뿐만 아니라, 직접 기획하고 진행하는 미션을 통해 더 많은 사람들이 나눔을 통한 기쁨을 누릴 수 있게 합니다.
					<br> 전국에서 매년 약 1000명의 멤버들이 1년간 비전메이커 후원자홍보단으로 활동합니다.
				</span>
				<div class="apply">
					<span>이렇게<br>신청하세요</span> 
					<strong>신청대상</strong>
					<br>월드비전에 대한 열정이 마구 넘쳐서 주변에 알리고 싶으신 분들, 내 주변에 나눔 활동을 전파 하고 싶었는데 특별한 동기부여가 없어서 못 하셨던 분들, 월드비전을 사랑하는 후원자분들끼리의 끈끈한 유대관계를 원하셨던 분들<br> 
					<strong>신청방법 : </strong>홈페이지를 통해 신청 후 후원자 홍보단 선발
				</div>
				<div id="maker">
					<span class="smTitle">비전메이커<br>후원자홍보단의<br>3가지 기쁨
					</span>
					<dl>
						아는 만큼 깊어지는 나눔의 기쁨
						<br>
						<span class="subTt">정기모임 및 교육</span>
					</dl>
					<dd>정기모임과 교육을 통해 월드비전의 사업과 활동을 자세히 알게 되고 나눔의 기쁨을 더욱 깊이 느낄 수 있는 당당한 월드비전 홍보단으로 준비됩니다.(정기교육에 참여한 비전메이커에게는 ‘교육이수인증서’를 발급해드립니다.)</dd>
					<dl>
						알리면 두 배가 되는 나눔의 기쁨
						<br>
						<span class="subTt">월드비전 소개 및 홍보활동</span>
					</dl>
					<dd>월드비전 소개 및 홍보활동 월드비전을 대신해 학교, 교회, 소모임, 온라인 등에서 월드비전의 사업과 활동을 소개합니다. 후원을 소개하고 원유하는 적극적인 홍보대사 역할을 함으로서 더 많은 어린이들이 풍성한 삶을 누릴 수 있도록 합니다.</dd>
					<dl>
						우리가 만드는 나눔의 기쁨
						<br>
						<span class="subTt">나눔행사 주최</span>
					</dl>
					<dd id="lastVm">비전메이커는 매년 비전나눔파티, 바자회, 일일찻집 등의 다양한 나눔행사를 직접 기획하고 진행합니다. 본 나눔행사로 지인들을 초대해 나눔의 기쁨을 함께 누리고 월드비전을 홍보합니다.</dd>
				</div>
			</div>
			
			<div id="tab-2" class="tab-content">
					<p class="camTitle">
						월드비전의 소중한 후원자,<br> 모두 한 자리에 모이는 후원감사의 밤입니다.
					</p>
					<p class="smTitle">월드비전 패밀리데이</p>
					<p class="about">월드비전 패밀리데이는 모든 어린이의 풍성한 삶을 위해 월드비전과 동역해주시는 후원자님들께 감사를 표현하는 후원감사의 밤 입니다. 월드비전 후원자님이라면 누구나 참여하실 수 있으며, 연에인 친선대사 및 홍보대사의 공연과 감동적인 아동과 후원자님의 스토리가 어우러지는 행사입니다. 월드비전의 마음을 담은 패밀리데이에 많은 후원자님들이 오셔서 따뜻한 나눔의 기쁨을 누리시기를 바랍니다.</p>
					<div class="apply">
						<span>이렇게<br>신청하세요
						</span> <strong>신청대상 : </strong>월드비전 후원자님이라면 누구나<br> <strong>신청시기 : </strong>매년 말 경 (10~12월)<br> <strong>신청방법 : </strong>홈페이지를 통해 신청 후 참가 가능 <br> <br>
						<p id="ex">
							*매년 말 경 후원자들을 위한 패밀리데이가 준비됩니다.<br> 홈페이지를 통해 신청하시면, 나눔과 감동이 있는 패밀리데이에 함께 하실 수 있습니다.
						</p>
					</div>
					<div id="sponPic">
						<img src="${contextPath}/menu/campaign_images/img_sponsor01.jpg" alt="패밀리데이 사진">
					</div>
					<div id="fdvideoBtn">
						<a href="https://www.youtube.com/watch?v=upVIZv7tzAM&feature=youtu.be">영상보기</a>
					</div>
			</div>
			
			<div id="tab-3" class="tab-content">
				<p class="camTitle">
					월드비전 후원자,<br>후원의 진정한 의미와 변화의 기쁨을 누릴 수 있습니다.
				</p>
				<p class="smTitle">해외사업장방문 이란?</p>
				<p class="about">
					월드비전 후원자로서 월드비전의 지역개발사업 현장을 체험하고 후원의 결과들을 직접 확인할 수 있는 의미 있는 프로그램입니다.<br> 월드비전의 후원아동 및 지역주민과 교류하고 지역봉사를 통해 나눔을 실천하는 뜻 깊은 시간을 보낼 수 있습니다.
				</p>
				<div class="apply" id="applySm">
					<span>이렇게<br>신청하세요
					</span> <strong>신청대상 : </strong>월드비전 후원자 및 후원자 가족<br> <strong>신청시기 : </strong>상반기(1~2월경), 하반기(7~8월경)<br> <strong>신청방법 : </strong>방문 두 달 전 홈페이지를 통해 참가신청 접수
				</div>
				<div id="table">
					<p class="smTitle">프로그램 소개</p>
					<table>
						<thead>
							<tr>
								<th>구분</th>
								<th>오전</th>
								<th>오후</th>
								<th>저녁</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th>첫째날</th>
								<td>출국</td>
								<td>현지 도착 후 사업장 이동</td>
								<td>나눔 및 배움활동 1</td>
							</tr>
							<tr>
								<th>둘째날</th>
								<td>지역개발사업 견학 1</td>
								<td>지역개발사업 견학 2</td>
								<td>나눔 및 배움활동 2</td>
							</tr>
							<tr>
								<th>셋째날</th>
								<td>월드비전 후원아동과의 만남</td>
								<td>후원아동과 레크레이션</td>
								<td>나눔 및 배움활동 3</td>
							</tr>
							<tr>
								<th>넷째날</th>
								<td>지역개발사업 견학 3</td>
								<td>봉사활동</td>
								<td>나눔 및 배움활동 4</td>
							</tr>
							<tr>
								<th>다섯째날</th>
								<td>현지 문화 체험</td>
								<td>현지 문화 체험</td>
								<td>휴식</td>
							</tr>
							<tr>
								<th>여섯째날</th>
								<td>수도로 이동</td>
								<td colspan="2">귀국</td>
							</tr>
						</tbody>
					</table>
					<p id="timeTableTxt">*상기 일정은 사정에 따라 변경될 수 있습니다.</p>
				</div>
			</div>
			
			
			<div id="tab-4" class="tab-content">
				<p class="camTitle">
					후원자와 아동을 위해 재능을 나누는 여러분이<br>월드비전의 든든한 봉사자입니다.
				</p>
				<p class="smTitle">번역 봉사단이란?</p>
				<img src="${contextPath}/menu/campaign_images/cam2.PNG"> <span class="about imgText"> 월드비전 비전메이커 번역봉사단은 한국의 후원자와 해외 후원아동이 언어의 장벽을 넘어 편지를 통해 아름답고 친밀한 관계를 맺어나갈 수 있도록 징검다리 역할을 하는 재능나눔 번역봉사단입니다. </span>
				<div class="apply">
					<span>이렇게<br>신청하세요
					</span> <strong>신청대상</strong><br> 모집시점 기준, 20세 이상(대학교 입학예정자 포함)으로<br>자원봉사 활동에 관심 있으신 분<br>한-영/영-한 번역 능력을 보유하신 분<br>6개월 이상 성실하게 봉사 가능한 분<br> <strong>신청방법 : </strong>매년 1~2회 번역봉사단 홈페이지를 통해 신청 및 테스트 후 선발
				</div>
				<div id="translation">
					<span class="smTitle">번역봉사단<br>주요활동
					</span>
					<dl>후원자/아동 편지 번역
					</dl>
					<dd>
						번역봉사단으로 선발되면 후원자와 아동이 주고 받는 편지를<br>각각 한국어와 영어로 번역하는 봉사에 참여하게 됩니다.<br>(후원자 편지: 한-영 번역, 아동 편지: 영-한 번역)
					</dd>
					<dl>오프라인 모임 참석
					</dl>
					<dd>
						번역봉사를 시작하기 전, 번역봉사자가 한 자리에 모이는<br>오리엔테이션에 참석해 주시면 번역봉사 활동이 가능합니다.
					</dd>
					<dl>온라인 커뮤니티 활동
					</dl>
					<dd id="lastEp">
						비전메이커 버역봉사단 홈페이지의 번역 커뮤니티를 통해,<br>다른 봉사자님들과 편지 번역 및 봉사 활동에 대해 자유롭게 이야기를 나눌 수 있습니다.
					</dd>
					<span id="benefits" class="smTitle">번역봉사단<br>혜택
					</span>
					<p id="benefitText">
						이달의 우수봉사자 선정 및 소정의 상품 증정<br>월드비전의 다른 봉사활동 참가 기회 부여 및 월드비전 행사에 우선 초청<br>월드비전 번역봉사단 봉사확인증 발급
					</p>
				</div>
			</div>
		</div>
		<!-- //PcContentWrap -->







		<!-- MobileContentWrap -->
		<div id="MobileContentWrap" class="tabmenu wrapper">
			<ul>
				<li id="tab1" class="btncon accordion active"><a href="#tab1" class="titleAn accordion_tab active">비전메이커
						<div class="accordion_arrow">
							<i class="fas fa-angle-down"></i>
						</div>
				</a>
					<div class="tabcon accordion_content">
						<p class="camTitle">
							월드비전의 소중한 후원자,<br>여러분이 월드비전 홍보대사입니다.
						</p>
						<p class="smTitle">비전메이커 후원자 홍보단</p>
						<img src="${contextPath}/menu/campaign_images/cam1.PNG">
						<p class="about imgText">월드비전과 함께 나눔의 기쁨을 주변에 알리는 가슴 뛰는 일을 합니다. 온라인, 오프라인 활동을 통해 월드비전을 알릴 뿐만 아니라, 직접 기획하고 더 많은 사람들이 나눔을 통한 기쁨을 누릴 수 있게 합니다.</p>
						<div>
							<a href="${contextPath}/service.jsp" class="info">신청안내</a> <a href="${contextPath}/service.jsp" class="more">자세히보기</a>
						</div>
					</div></li>
				<li id="tab2" class="btncon accordion"><a href="#tab2" class="titleAn accordion_tab">패밀리데이
						<div class="accordion_arrow">
							<i class="fas fa-angle-down"></i>
						</div>
				</a>
					<div class="tabcon  accordion_content">
						<p class="camTitle">
							월드비전의 소중한 후원자,<br> 모두 한 자리에 모이는 후원감사의 밤입니다.
						</p>
						<p class="smTitle">월드비전 패밀리데이</p>
						<p class="imgText" id="first">
							월드비전 패밀리데이는 모든 어린이의 풍성한 삶을 위해 월드비전과 동역해주시는 후원자님들께 감사를 표현하는 후원감사의 밤 입니다. <br> 연예인 친선대사 및 홍보대사의 공연과 감동적인 아동과 후원자님의 스토리가 어우러지는 행사입니다. 월드비전의 마음을 담은 패밀리데이에 많은 후원자님들이 오셔서 따뜻한 나눔의 기쁨을 누리시기를 바랍니다.
						</p>
						<div id="fdvideoBtn">
							<a href="https://www.youtube.com/watch?v=upVIZv7tzAM&feature=youtu.be" class="info">영상보기</a> <a href="${contextPath}/service.jsp" class="more">자세히보기</a>
						</div>
					</div></li>
				<li id="tab3" class="btncon accordion"><a href="#tab3" class="titleAn accordion_tab">해외사업장 방문
						<div class="accordion_arrow">
							<i class="fas fa-angle-down"></i>
						</div>
				</a>
					<div class="tabcon accordion_content">
						<p class="camTitle">
							월드비전 후원자,<br>후원의 진정한 의미와 변화의 기쁨을 누릴 수 있습니다.
						</p>
						<p class="smTitle">해외사업장방문 이란?</p>
						<p class="imgText">
							월드비전 후원자로서 월드비전의 지역개발사업 현장을 체험하고 후원의 결과들을 직접 확인할 수 있는 의미 있는 프로그램입니다.<br>월드비전의 후원아동 및 지역주민과 교류하고 지역봉사를 통해 나눔을 실천하는 뜻 깊은 시간을 보낼 수 있습니다.
						</p>
						<div>
							<a href="${contextPath}/service.jsp" class="info ">프로그램 소개</a> <a href="${contextPath}/service.jsp" class="more">자세히보기</a>
						</div>
					</div></li>
				<li id="tab4" class="btncon accordion"><a href="#tab4" class="titleAn accordion_tab">번역 봉사단
						<div class="accordion_arrow">
							<i class="fas fa-angle-down"></i>
						</div>
				</a>
					<div class="tabcon accordion_content">
						<p class="camTitle">
							후원자와 아동을 위해 재능을 나누는 여러분이<br>월드비전의 든든한 봉사자입니다.
						</p>
						<p class="smTitle">번역 봉사단이란?</p>
						<img src="${contextPath}/menu/campaign_images/cam2.PNG">
						<p class="about imgText">월드비전 비전메이커 번역봉사단은 한국의 후원자와 해외 후원아동이 언어의 장벽을 넘어 편지를 통해 아름답고 친밀한 관계를 맺어나갈 수 있도록 징검다리 역할을 하는 재능나눔 번역봉사단입니다.</p>
						<div>
							<a href="${contextPath}/service.jsp" class="info">신청안내</a> <a href="${contextPath}/service.jsp" class="more">자세히보기</a>
						</div>
					</div></li>

			</ul>
		</div>
		<!-- //MobileContentWrap -->
		<script src="${contextPath}/js/mmenu-light.js"></script>
		<script src="${contextPath}/js/hidemenu.js"></script>
		<%@ include file="../footer.jsp"%>
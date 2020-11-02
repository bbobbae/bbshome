<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- prefix="c" : 기본기능 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- prefix="fmt" : 형식화 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>

<div id="firstTop">
	<div id="my-header">
		<!-- 반응형 메뉴  -->
		<a class="mburger mburger--spin" href="#my-menu"> <b></b> <b></b> <b></b></a>
		<nav id="my-menu">
			<ul id="menuList">
				<li class="bottomMenu mainMenu"><a href="${contextPath}/menu/about.jsp">월드비전</a>
					<ul class="Vertical">
						<li><a href="${contextPath}/menu/about.jsp" title="월드비전 소개 페이지로 이동">소개</a></li>
					</ul></li>
				<li class="bottomMenu mainMenu"><a href="${contextPath}/menu/support.jsp">후원안내</a>
					<ul>
						<li><a href="${contextPath}/menu/support.jsp">아동후원</a></li>
						<li><a href="${contextPath}/menu/support.jsp">사업후원</a></li>
						<li><a href="${contextPath}/menu/support.jsp">특별후원</a></li>
					</ul></li>
				<li class="menuTitle mainMenu"><a href="${contextPath}/menu/business.jsp">사업안내</a>
					<ul>
						<li><a href="${contextPath}/menu/business.jsp">해외사업</a></li>
						<li><a href="${contextPath}/menu/business.jsp">국내사업</a></li>
						<li><a href="${contextPath}/menu/business.jsp">북한사업</a></li>
						<li><a href="${contextPath}/menu/business.jsp">옹호사업</a></li>

					</ul></li>
				<li class="menuTitle mainMenu"><a href="${contextPath}/menu/campaign.jsp">캠페인</a>
					<ul>
						<li><a href="${contextPath}/menu/campaign.jsp">캠페인</a></li>
						<li><a href="${contextPath}/menu/campaign.jsp">후원자 프로그램</a></li>
					</ul></li>
				<li class="menuTitle mainMenu"><a href="${contextPath}/menu/news.jsp">소식</a>
					<ul>
						<li><a href="${contextPath}/menu/news.jsp">스토리</a></li>
						<li><a href="${contextPath}/menu/news.jsp">공지사항</a></li>
						<li><a href="${contextPath}/menu/news.jsp">소식지</a></li>
					</ul></li>
				<li><a href="/WorldVision/worldVision.jb?type=supportPart" title="후원하기" id="sponsorButton">후원 바로가기</a></li>
				<li><a href="/WorldVision/worldVision.jb?type=noticeList" title="공지사항" id="sponsorButton">공지사항</a></li>
			</ul>
		</nav>
	</div>


	<a href="/WorldVision/worldVision.jb?type=noticeList" title="공지사항">공지사항</a>
	<c:choose>
		<c:when test="${empty sessionScope.loginUserInfo }">
			<a href="/WorldVision/worldVision.jb?type=loginForm" title="로그인">로그인</a>
		</c:when>
		<c:otherwise>
			<a href="/WorldVision/worldVision.jb?type=logout" title="로그아웃">로그아웃</a>
		</c:otherwise>
	</c:choose>

	<c:choose>
		<c:when test="${empty sessionScope.loginUserInfo}">
			<a href="/WorldVision/worldVision.jb?type=agree" title="회원가입"><img src="${contextPath}/index_images/mobile_join.png" id="joinlogo">회원가입</a>	
		</c:when>
		
		<c:when test="${sessionScope.loginUserInfo.getId().equals('admin')}">
			<a href="/WorldVision/worldVision.jb?type=admin" title="회원가입"><img src="${contextPath}/index_images/mobile_join.png" id="joinlogo">관리자페이지</a>
		</c:when>

		<c:otherwise>
			<a href="/WorldVision/worldVision.jb?type=myPwd" title="마이페이지"><img src="${contextPath}/index_images/mobile_join.png" id="joinlogo">마이페이지</a>		
		</c:otherwise>
	</c:choose>
</div>

<div id="my-content">

	<!--nav-->
	<nav id="pcmenu">
		<div>
			<ul id="menuList">
				<li class="mainMenu"><a href="/WorldVision/worldVision.jb?type=index" title="월드비전 홈페이지로 이동"><h1>
							<img src="${contextPath}/index_images/wv_logo01.png">
						</h1></a></li>
				<li class="bottomMenu mainMenu"><a href="${contextPath}/menu/about.jsp">
						<h2>월드비전</h2>
				</a>
					<ul class="sub">
						<li><a href="${contextPath}/menu/about.jsp" title="월드비전 소개 페이지로 이동">소개</a></li>
					</ul></li>
				<li class="bottomMenu mainMenu"><a href="${contextPath}/menu/support.jsp"><h2>후원안내</h2></a>
					<ul class="sub">
						<li><a href="${contextPath}/menu/support.jsp">아동후원</a></li>
						<li><a href="${contextPath}/menu/support.jsp">사업후원</a></li>
						<li><a href="${contextPath}/menu/support.jsp">특별후원</a></li>
					</ul></li>
				<li class="menuTitle mainMenu"><a href="${contextPath}/menu/business.jsp"><h2>사업안내</h2></a>
					<ul class="sub">
						<li><a href="${contextPath}/menu/business.jsp">해외사업</a></li>
						<li><a href="${contextPath}/menu/business.jsp">국내사업</a></li>
						<li><a href="${contextPath}/menu/business.jsp">북한사업</a></li>
						<li><a href="${contextPath}/menu/business.jsp">옹호사업</a></li>

					</ul></li>
				<li class="menuTitle mainMenu"><a href="${contextPath}/menu/campaign.jsp"><h2>캠페인</h2></a>
					<ul class="sub">
						<li><a href="${contextPath}/menu/campaign.jsp">캠페인</a></li>
						<li><a href="${contextPath}/menu/campaign.jsp">후원자 프로그램</a></li>
					</ul></li>
				<li class="menuTitle mainMenu"><a href="${contextPath}/menu/news.jsp"><h2>소식</h2></a>
					<ul class="sub">
						<li><a href="${contextPath}/menu/news.jsp">스토리</a></li>
						<li><a href="${contextPath}/menu/news.jsp">공지사항</a></li>
						<li><a href="${contextPath}/menu/news.jsp">소식지</a></li>
					</ul>
				</li>
			</ul>
			<h2>		
				<c:choose>					
					<c:when test="${sessionScope.loginUserInfo.getId().equals('admin')}">						
					</c:when>			
					<c:otherwise>
						<a href="/WorldVision/worldVision.jb?type=supportPart" id="sponsorButton">후원 바로가기</a>	
					</c:otherwise>
				</c:choose>
			</h2>
		</div>
	</nav>
	<!--//nav-->
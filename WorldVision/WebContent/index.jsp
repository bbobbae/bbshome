<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>
<!DOCTYPE html>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.PreparedStatement"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.SQLException"%>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="정보배">
<title>메인페이지</title>
<link rel="stylesheet" href="${contextPath}/css/swiper.css">
<link rel="stylesheet" href="${contextPath}/css/common.css">
<link rel="stylesheet" href="${contextPath}/css/index.css">
<link rel="stylesheet" href="${contextPath}/css/mmenu-light.css">
<link rel="stylesheet" href="${contextPath}/css/mburger.css">

<script type="text/javascript" src="${contextPath}/js/jquery.js"></script>
<script type="text/javascript" src="${contextPath}/js/swiper.min.js"></script>
<script type="text/javascript" src="${contextPath}/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="${contextPath}/js/swiper.js"></script>
<script type="text/javascript" src="${contextPath}/js/bxslider.js"></script>
<script src="https://kit.fontawesome.com/9d91dfe9ed.js" crossorigin="anonymous"></script>
</head>
<body>
	<div id="my-page">
		<%@ include file="./header.jsp"%>

		<!-- main content -->
		<div class="swiper-container slider1">
			<ul class="swiper-wrapper">
				<li class="swiper-slide bg1"><a href="${contextPath}/menu/campaign.jsp" class="topBg" title="캠페인 페이지로 이동"> <span class="contentTop_TextBig" id="worldText">World is One</span>
						<p class="contentTop_TextSmall">당신의 선한 영향력으로 세계는 하나가 됩니다.</p>
				</a> <a href="${contextPath}/menu/campaign.jsp" class="contentTop_moreBtn" title="캠페인 자세히 보기">자세히 보기</a></li>
				<li class="swiper-slide bg2"><a href="${contextPath}/menu/campaign.jsp" class="topBg" title="캠페인 페이지로 이동"> <span class="contentTop_TextBig">가장 막다른 곳에 몰린<br>아이들을 구해주세요
					</span>
						<p class="contentTop_TextSmall">해외사업후원 캠페인</p>
				</a> <a href="${contextPath}/menu/campaign.jsp" class="contentTop_moreBtn" title="캠페인 자세히 보기">자세히 보기</a></li>
				<li class="swiper-slide bg3"><a href="${contextPath}/menu/campaign.jsp" class="topBg" title="캠페인 페이지로 이동"> <span class="contentTop_TextBig">남매의 소금밥</span>
						<p class="contentTop_TextSmall">마음을 담은 사랑의 도시락 전하기</p>
				</a> <a href="${contextPath}/menu/campaign.jsp" class="contentTop_moreBtn" title="캠페인 자세히 보기">자세히 보기</a></li>
				<li class="swiper-slide bg4"><a href="${contextPath}/menu/campaign.jsp" class="topBg" title="캠페인 페이지로 이동"> <span class="contentTop_TextBig">쓰레기 가득한 집에 사는 연지</span>
						<p class="contentTop_TextSmall">위기아동 돕기 캠페인</p>
				</a> <a href="${contextPath}/menu/campaign.jsp" class="contentTop_moreBtn" title="캠페인 자세히 보기">자세히 보기</a></li>

				<li class="swiper-slide bg5"><a href="${contextPath}/menu/campaign.jsp" class="topBg" title="캠페인 페이지로 이동"> <span class="contentTop_TextBig">세상에서 가장 무서운 곳,<br>바로 우리 집
					</span>
						<p class="contentTop_TextSmall">가정폭력 피해아동을 도와주세요</p>
				</a> <a href="${contextPath}/menu/campaign.jsp" class="contentTop_moreBtn" title="캠페인 자세히 보기">자세히 보기</a></li>
			</ul>
			<!-- Add Pagination -->
			<div class="swiper-pagination"></div>
			<!-- Add Arrows -->
			<div class="swiper-button-next topBtn"></div>
			<div class="swiper-button-prev topBtn"></div>
		</div>
		<!-- //maincontent -->


		<!-- contentTop_bottom -->
		<div id="contentTop_bottom">
			<!-- contentTop_left -->
			<div id="contentTop_left">
				<!-- sliderTwo -->
				<ul class="sliderTwo">
					<li class="swiper-slide"><a href="${contextPath}/mainSpt/supportPart.jsp" title="아동후원하기 페이지로 이동"> <img src="${contextPath}/index_images/main07.jpg">
							<p>
								최고로 <span class="point">가치</span>있는 기부는 <br>한 아이를 살리는 것입니다.
							</p>
					</a></li>
					<li class="swiper-slide"><a href="${contextPath}/mainSpt/supportPart.jsp" title="아동후원하기 페이지로 이동"> <img src="${contextPath}/index_images/main01.jpg">
							<p>
								국내 가장 많은후원자가 선택한<br>
								<span class="point"> 해외아동후원</span>'5배의 기적'.
							</p>
					</a></li>
				</ul>
				<!-- //sliderTwo -->
			</div>
			<!-- //contentTop_left -->

			<!--contentTop_center-->
			<div id="contentTop_center">
				<a href="${contextPath}/mainSpt/supportPart.jsp" title="아동후원하기 페이지로 이동">
					<p>
						모든 아이들의<br>풍성한 삶을 위해<br> <span class="point">해외아동 후원하기</span>
					</p>
				</a>
			</div>
			<!--//contentTop_center-->

			<!-- contentTop_right -->
			<div id="contentTop_right">
				<ul class="kidList">
					<li>
						<div>
							<p>
								<i class="fas fa-child"></i>Monika
							</p>
							<p>6살, 인도</p>
						</div> <img src="${contextPath}/index_images/child06.jpg" alt="해외아동이미지">
					</li>
					<li>
						<div>
							<p>
								<i class="fas fa-child"></i>lrena
							</p>
							<p>12살, 가나</p>
						</div> <img src="${contextPath}/index_images/kid1.PNG" alt="해외아동이미지">
					</li>
					<li>
						<div>
							<p>
								<i class="fas fa-child"></i>Mariama
							</p>
							<p>13살, 시에라리온</p>
						</div> <img src="${contextPath}/index_images/kid2.PNG" alt="해외아동이미지">
					</li>
					<li>
						<div>
							<p>
								<i class="fas fa-child"></i>Luis
							</p>
							<p>10살, 엘살바도르</p>
						</div> <img src="${contextPath}/index_images/child03.jpg" alt="해외아동이미지">
					</li>
					<li>
						<div>
							<p>
								<i class="fas fa-child"></i>Sandile
							</p>
							<p>9살, 에스와티니</p>
						</div> <img src="${contextPath}/index_images/kid3.PNG" alt="해외아동이미지">
					</li>

				</ul>
				<a href="${contextPath}/mainSpt/supportPart.jsp" title="아동후원하기 페이지로 이동" id="kidImg">아동후원하기</a>
			</div>
			<!-- //contentTop_right -->

		</div>
		<!-- //contentTop_bottom -->


		<!--contentCenter-->
		<div id="contentCenter" class="contentCommon">
			<!--contentCenter_left-->
			<div id="contentCenter_left" class="contentdetail">
				<a href="${contextPath}/service.jsp" title="사업보고서 페이지로 이동">
					<div id="contentDetailImg1"></div>
					<p class="bigTitle">
						보고서로 확인하는 <br> 내 후원금의 빛나는 순간
					</p> <span class="smallTitle">2019사업보고</span>
				</a>
			</div>
			<!--//contentCenter_left-->

			<!--contentCenter_center-->
			<div id="contentCenter_center" class="contentdetail">
				<a href="${contextPath}/service.jsp" title="결과보고 페이지로 이동">
					<div id="contentDetailImg2"></div>
					<p class="bigTitle">
						TV에 나온그 아이들은 <br> 어떻게 지내고 있을까요?
					</p> <span class="smallTitle">결과보고</span>
				</a>
			</div>
			<!--//contentCenter_center-->

			<!--contentCenter_right-->
			<div id="contentCenter_right" class="contentdetail">
				<div id="newsline">
					<span>World Vision News</span> <a href="${contextPath}/menu/news.jsp" title="공지사항 페이지로 이동"> <img src="${contextPath}/index_images/mroe.png">
					</a>
				</div>

		<%
			// JDBC 참조 변수 준비
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "gd25th14", pw = "gd1234";

			Connection con = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;

			// 1) JDBC 드라이버 로딩
			Class.forName("oracle.jdbc.OracleDriver");

			
			try{
				// 2) DB연결(DB url, DB id, DB pw)
				con = DriverManager.getConnection(url, user, pw);
				// 3) SQL문 준비
				String sql = "select X.rnum, X.seq, X.title, X.content,X.writer, X.indate, X.views\r\n" + 
						"from (select rownum as rnum, A.seq, A.title, A.content, A.writer, A.indate, A.views\r\n" + 
						"from (select seq, title, content, writer, indate, views\r\n" + 
						"from NOTICE order by seq desc) A where rownum <=10) X where X.rnum >=1";
				pstmt = con.prepareStatement(sql);
				rs = pstmt.executeQuery();
			
			%>

			<%
			while (rs.next()) {%>
				<a href="/WorldVision/worldVision.jb?type=noticeViewForm&seq=<%=rs.getInt("seq")%>"><%=rs.getString("title")%></a>
				<%}%>
			<%
				rs.close();
				pstmt.close();
				con.close();
			}catch(SQLException e){
					e.printStackTrace();
				}
			%>		
			</div>
			<!--//contentCenter_right-->

		</div>
		<!--//contentCenter-->


		<!--contentBottom-->
		<div id="contentBottom" class="contentCommon">

			<!--contentBottom_left-->
			<div id="contentBottom_left" class="contentdetail">
				<a href="${contextPath}/service.jsp" title="스토리 상세페이지로 이동">
					<div id="contentDetailImg3"></div>
					<p class="bigTitle">
						케냐 아이와 만나는 날을 위해<br>운동회와 마술쇼까지 준비한 후원자들
					</p> <span class="smallTitle">스토리</span>
				</a>
			</div>
			<!--//contentBottom_left-->

			<!--contentBottom_center-->
			<div id="contentBottom_center" class="contentdetail">
				<iframe src="https://www.youtube.com/embed/-8IBSH6ccRo" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
				<a href="${contextPath}/service.jsp" title="스토리 상세페이지로 이동">
					<p class="bigTitle">
						코로나19로 멈춰버린 대한민국<br>우리는 움직입니다.
					</p> <span class="smallTitle">스토리</span>
				</a>
			</div>
			<!--//contentBottom_center-->

			<!--contentBottom_right-->
			<div id="contentBottom_right" class="contentdetail">
				<a href="${contextPath}/service.jsp" title="스토리 상세페이지로 이동">
					<div id="contentDetailImg4"></div>
					<p class="bigTitle">
						내 후원아동이<br>바뀐다고요?
					</p> <span class="smallTitle">스토리</span>
				</a>
			</div>
			<!--//contentBottom_right-->

		</div>
		<!--//contentBottom-->




		<!--footer-->
		<footer>
			<div id="bottom">
				<!--companyInfo-->
				<div id="companyInfo" class="footerDetail">
					<img src="${contextPath}/index_images/footerlogo.png" alt="월드비전 로고">
					<p id="infoTop">
						대표전화 02-2078-7000<br> 상담시간 (월-금) 09:00~18:00<br>
					</p>
					<p>
						서울시 영등포구 여의나루로 77-1 (07327)<br> 사회복지법인 월드비전<br> 사업자번호 116-82-00276<br> 회장 양호승
					</p>
				</div>
				<!--//companyInfo-->

				<!--fast-->
				<div id="fast" class="footerDetail">
					<p class="footerTitle">바로가기</p>
					<!--fast_left-->
					<div id="fast_left">
						<ul>
							<li><a href="${contextPath}/menu/support.jsp" title="후원하기 페이지로 이동"><strong>후원하기</strong></a></li>
							<li><a href="${contextPath}/menu/news.jsp" title="스토리 페이지로 이동">스토리</a></li>
							<li><a href="${contextPath}/menu/business.jsp" title="사업소개 페이지로 이동">사업소개</a></li>
							<li><a href="${contextPath}/service.jsp" title="사이트맵 페이지로 이동">사이트맵</a></li>
						</ul>
					</div>
					<!--//fast_left-->

					<!--fast_leftcenter-->
					<div id="fast_leftcenter">
						<ul>
							<li><a href="${contextPath}/menu/about.jsp" title="월드비전 소개페이지로 이동"><strong>월드비전</strong></a></li>
							<li><a href="${contextPath}/service.jsp" title="자료센터로 페이지로 이동">자료센터</a></li>
							<li><a href="${contextPath}/menu/campaign.jsp" title="후원자 참여하기 페이지로 이동">참여하기</a></li>
							<li><a href="${contextPath}/service.jsp" title="마이월드비전 페이지로 이동">마이월드비전</a></li>
						</ul>
					</div>
					<!--//fast_leftcenter-->

					<!--fast_rightcenter-->
					<div id="fast_rightcenter">
						<ul>
							<li><a href="${contextPath}/service.jsp" title="인재채용 페이지로 이동"><strong>인재채용</strong></a></li>
							<li><a href="${contextPath}/service.jsp" title="FAQ 페이지로 이동">FAQ</a></li>
							<li><a href="${contextPath}/service.jsp" title="온라인상담">온라인상담</a></li>
						</ul>
					</div>
					<!--//fast_rightcenter-->

					<!--fast_right-->
					<div id="fast_right">
						<ul>
							<li><a href="${contextPath}/service.jsp" title="개인정보 처리 방침 페이지로 이동"><strong>개인정보 처리 방침</strong></a></li>
							<li><a href="${contextPath}/service.jsp" title="아동보호정책 페이지로 이동">아동보호정책</a></li>
							<li><a href="${contextPath}/service.jsp" title="이용약관 전문 페이지로 이동">이용약관</a></li>
							<li><a href="${contextPath}/service.jsp" title="이메일 무단 수집 거부">이메일 무단 수집 거부</a></li>
						</ul>
					</div>
					<!--//fast_right-->

				</div>
				<!--//fast-->

				<!--connect-->
				<div id="connect" class="footerDetail">
					<p class="footerTitle ">Follow</p>
					<ul>
						<li><a href="https://www.facebook.com/worldvisionkorea" title="월드비전 페이스북 페이지로 이동"><i class="fab fa-facebook-square"></i>페이스북</a></li>
						<li><a href="https://www.instagram.com/worldvisionkorea/" title="월드비전 인스타그램 페이지로 이동"><i class="fab fa-instagram-square"></i>인스타그램</a></li>
						<li><a href="https://twitter.com/wvkorea" title="월드비전 트위터 페이지로 이동"><i class="fab fa-twitter-square"></i>트위터</a></li>
						<li><a href="https://www.youtube.com/worldvisionkorea" title="월드비전 유튜브 페이지로 이동"><i class="fab fa-youtube-square"></i>유튜브</a></li>
						<li><a href="http://blog.naver.com/wvfamily" title="월드비전 네이버 블로그 페이지로 이동"><i class="fab fa-blogger"></i>블로그</a></li>
					</ul>
					<div>
						<select onchange="window.location.href=this.value" name="world" id="world" title="다른나라 월드비전">
							<option value="">다른나라 월드비전</option>
							<option value="//www.wvi.org">International</option>
							<option value="//www.wvarmenia.am">Armenia</option>
							<option value="//www.worldvision.com.au">Australia</option>
							<option value="//www.worldvision.at">Austria</option>
							<option value="//www.worldvision.ca">Canada</option>
							<option value="//www.worldvision.fi">Finland</option>
							<option value="//www.worldvision.de">Germany</option>
							<option value="//www.worldvision.org.hk">Hong Kong</option>
							<option value="//www.worldvision.in">India</option>
							<option value="https://www.worldvision.ie">Ireland</option>
							<option value="//www.worldvision.jp">Japan</option>
							<option value="//www.worldvision.com.my">Malaysia</option>
							<option value="//www.worldvision.nl">The Netherlands</option>
							<option value="//www.worldvision.org.nz">New Zealand</option>
							<option value="//www.worldvision.org.ph">Philippines</option>
							<option value="//www.worldvision.ro">Romania</option>
							<option value="//www.worldvision.org.sg">Singapore</option>
							<option value="https://www.worldvision.org.za">Southern Africa</option>
							<option value="//www.worldvision.ch">Switzerland</option>
							<option value="//www.worldvision.org.tw">Taiwan</option>
							<option value="//www.worldvision.or.th">Thailand</option>
							<option value="//www.worldvision.org.uk">United Kingdom</option>
							<option value="//www.worldvision.org">United States</option>
						</select> <select onchange="window.location.href=this.value" name="inkorea" id="inkorea" title="지부 및 직할기관">
							<option value="">지부 및 직할기관</option>
							<option value="//www.wvsungnam.or.kr/">경기동부지역본부/성남복지관</option>
							<option value="http://wvgn.or.kr/">경남지역본부</option>
							<option value="http://yeonjae.or.kr/">부산지역본부/연제복지관</option>
							<option value="http://wvulsan.or.kr/">울산지역본부</option>
							<option value="//www.wvchoir.or.kr/">월드비전 합창단</option>
							<option value="http://wvsunhak.or.kr/">인천지역본부/선학복지관</option>
						</select>
					</div>
				</div>
				<!--//connect-->

				<div id="bottomText">
					국제국호개발옹호NGO 월드비전은 전세계 100여개 나라에서<br> 1억명의 지구촌 어린이와 이웃을 위해 일합니다.<br> 사회복지법인 원드비전<br> 사업자번호 116-82-00276 | 회장 양승호<br> <a href="${contextPath}/service.jsp" title="개인정보처리방침 전문 페이지 이동">개인정보처리방침 | </a> <a href="${contextPath}/service.jsp" title="온라인상담 페이지 이동">온라인상담 | </a> <a href="${contextPath}/service.jsp" title="pc버전으로 변환">PC버전</a>
				</div>
			</div>
			<!-- //bottom -->
		</footer>
		<!--//footer-->
		<script src="${contextPath}/js/mmenu-light.js"></script>
		<script src="${contextPath}/js/hidemenu.js"></script>		
	</div>
	</div>

</body>
</html>

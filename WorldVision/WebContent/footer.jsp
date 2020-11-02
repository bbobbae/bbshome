<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>
            <!--footer-->
            <footer>
                <div id="bottom">
                    <!--companyInfo-->
                    <div id="companyInfo" class="footerDetail">
                        <img src="${contextPath}/index_images/footerlogo.png" alt="월드비전 로고">
                        <p id="infoTop">
                            대표전화 02-2078-7000<br>
                            상담시간 (월-금) 09:00~18:00<br>
                        </p>
                        <p>
                            서울시 영등포구 여의나루로 77-1 (07327)<br>
                            사회복지법인 월드비전<br>
                            사업자번호 116-82-00276<br>
                            회장 양호승
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
                            <li> <a href="https://www.instagram.com/worldvisionkorea/" title="월드비전 인스타그램 페이지로 이동"><i class="fab fa-instagram-square"></i>인스타그램</a></li>
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
                        </select>
                        <select onchange="window.location.href=this.value" name="inkorea" id="inkorea" title="지부 및 직할기관">
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
                        국제국호개발옹호NGO 월드비전은 전세계 100여개 나라에서<br>
                        1억명의 지구촌 어린이와 이웃을 위해 일합니다.<br>
                        사회복지법인 원드비전<br>
                        사업자번호 116-82-00276 | 회장 양승호<br>
                        <a href="${contextPath}/service.jsp" title="개인정보처리방침 전문 페이지 이동">개인정보처리방침 | </a>
                        <a href="${contextPath}/service.jsp" title="온라인상담 페이지 이동">온라인상담 | </a>
                        <a href="${contextPath}/service.jsp" title="pc버전으로 변환">PC버전</a>
                    </div>
                </div>
                <!-- //bottom -->
            </footer>
            <!--//footer-->   
        </div>
    </div>
  
</body>
</html>
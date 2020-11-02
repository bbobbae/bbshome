<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>
<!DOCTYPE html>
<html lang="KO">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="정보배">
<title>월드비전 공지사항</title>
<link rel="stylesheet" href="${contextPath}/css/common.css">
<link rel="stylesheet" href="${contextPath}/css/noticeList.css">
<link rel="stylesheet" href="${contextPath}/css/mmenu-light.css">
<link rel="stylesheet" href="${contextPath}/css/mburger.css">

<script src="https://kit.fontawesome.com/9d91dfe9ed.js" crossorigin="anonymous"></script>

</head>
<body>
	<div id="my-page">
		<%@ include file="../header.jsp"%>


		<!-- contentWrap -->
		<div id="contentWrap">
			<h3 id="contentTitle">
				<a href="/WorldVision/worldVision.jb?type=noticeList">월드비전 공지사항</a>
			</h3>
			<p id="subTitle">
				나눔으로 만나는 희망,<br>월드비전이 새로운 소식을 전합니다.
			</p>
			<form name="notiList" method="post" action="/WorldVision/worldVision.jb?type=noticeList">
				<div id="tableBox">
					<c:if test="${loginUserInfo.id=='admin'}">
						<a href="/WorldVision/worldVision.jb?type=noticeWriteForm" id="writeBtn">작성하기</a>
					</c:if>

					<table id="notice" summary="월드비전 새소식 게시판">
						<caption>월드비전의 새소식 공지사항</caption>
						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>등록일</th>
								<th>조회수</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${nResult}" var="list">
								<tr>
									<td>${list.seq}</td>
									<td><a href="/WorldVision/worldVision.jb?type=noticeViewForm&page=${page}&seq=${list.seq}&key=${key}&word=${word}">${list.title}</a></td>
									<td>${list.writer}</td>
									<td><fmt:formatDate value="${list.indate}" pattern="yyyy-MM-dd" /></td>
									<td>${list.views}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>


				<ul id="pager" style="overflow: hidden;">
					<c:if test="${paging.prev }">
						<li><a href='<c:url value="/worldVision.jb?type=noticeList&page=${paging.startPage-1 }&key=${key}&word=${word}"/>'> <img src="${contextPath}/notice/notice_images/left_on.gif">
						</a></li>
					</c:if>

					<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="pageNum">
						<c:choose>
							<c:when test="${pageNum eq page}">
								<li style="float: left; list-style: none; margin-right: 10px"><a href='<c:url value="/worldVision.jb?type=noticeList&page=${pageNum}&key=${key}&word=${word}"/>' class="on">${pageNum }</a></li>
							</c:when>

							<c:otherwise>
								<li><a href='<c:url value="/worldVision.jb?type=noticeList&page=${pageNum}&key=${key}&word=${word}"/>'>${pageNum }</a></li>
							</c:otherwise>
						</c:choose>
					</c:forEach>

					<c:if test="${paging.next && paging.endPage >0 }">
						<li><a href='<c:url value="/worldVision.jb?type=noticeList&page=${paging.endPage+1 }&key=${key}&word=${word}"/>'> <img src="${contextPath}/notice/notice_images/right_on.gif">
						</a></li>
					</c:if>
				</ul>



				<ul id="searchBox">
					<li><select name="key">
							<option value="all" <c:if test="${key eq 'all'}">selected</c:if>>전체</option>
							<option value="title" <c:if test="${key eq 'title' }">selected</c:if>>제목</option>
							<option value="content" <c:if test="${key eq 'content' }">selected</c:if>>내용</option>
					</select></li>
					<li><input type="text" name="word" title="검색" value="${word}"></li>
					<li><input type="submit" value="검색"></li>
				</ul>
			</form>


		</div>
		<!-- //contentWrap -->
		<script src="${contextPath}/js/mmenu-light.js"></script>
		<script src="${contextPath}/js/hidemenu.js"></script>
		<%@ include file="../footer.jsp"%>
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
<link rel="stylesheet" href="${contextPath}/css/noticeView.css">
<link rel="stylesheet" href="${contextPath}/css/mmenu-light.css">
<link rel="stylesheet" href="${contextPath}/css/mburger.css">

<script src="https://kit.fontawesome.com/9d91dfe9ed.js" crossorigin="anonymous"></script>
<script src="${contextPath}/js/noticeView.js"></script>
<script type="text/javascript">
function notiDelete(){
	if(confirm("게시물을 삭제하시겠습니까?")) {
	    window.location.href = "/WorldVision/worldVision.jb?type=noticeDelete&seq=${nResult.seq}"
	}
}
</script>
</head>
<body>
	<div id="my-page">
		<%@ include file="../header.jsp"%>


		<!-- contentWrap -->
		<div id="contentWrap">
			<h3 id="contentTitle"><a href="/WorldVision/worldVision.jb?type=noticeList">월드비전 공지사항</a></h3>
			<p id="subTitle">나눔으로 만나는 희망,<br>월드비전이 새로운 소식을 전합니다.</p>
			<div id="content">
				<form method="post" action="/WorldVision/worldVision.jb?type=noticeUpdateForm&seq=${nResult.seq}">
					<table id="notice" summary="월드비전 공지사항 내용">
						<caption>월드비전의 새소식 공지사항</caption>
						<thead>
							<tr id="titleRow">
								<th>${nResult.seq}</th>
			                	<th>${nResult.title}</th>
			                	<th><fmt:formatDate value="${nResult.indate}" pattern="yyyy-MM-dd" /></th>
			                	<th>${nResult.views}</th>
				            </tr>
						</thead>
			          	<tbody>
			          		<tr>
			          			<td colspan="3">${nResult.content}</td>
			          		</tr>
			          	</tbody>
		            </table>
		            <c:if test="${loginUserInfo.id=='admin'}">
		    			<div class="buttons">
							<input type="submit" value="수정하기">
							<input type="button" value="삭제하기" onclick="notiDelete();">
						</div>
					</c:if>
			            
		            <a href="/WorldVision/worldVision.jb?type=noticeList&page=${page}&key=${key}&word=${word}" title="목록" id="listBtn">목록</a>
		           	
		           	<ul id="prevContent" class="subCon">
		           		<c:if test="${prev != null }">
							<li class="left"><img src="${contextPath}/notice/notice_images/prev.gif" alt="이전글"></li>
							<li class="center"><a href="/WorldVision/worldVision.jb?type=noticeViewForm&seq=${prev.seq}">${prev.title}</a></li>
							<li><fmt:formatDate value="${prev.indate}" pattern="yyyy-MM-dd" /></li>
						</c:if>
					</ul>		
					
					<ul id="nextContent" class="subCon">
						<c:if test="${next != null }">
							<li class="left"><img src="${contextPath}/notice/notice_images/next.gif" alt="다음글"></li>
							<li class="center"><a href="/WorldVision/worldVision.jb?type=noticeViewForm&seq=${next.seq}">${next.title}</a></li>
							<li><fmt:formatDate value="${next.indate}" pattern="yyyy-MM-dd" /></li>
						</c:if>
					</ul>
				</form>
			
			</div>
			
		</div>
		<!-- //contentWrap -->
		<script src="${contextPath}/js/mmenu-light.js"></script>
		<script src="${contextPath}/js/hidemenu.js"></script>

		<%@ include file="../footer.jsp"%>
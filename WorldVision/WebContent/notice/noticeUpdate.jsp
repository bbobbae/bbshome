<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>
<!DOCTYPE html>
<html lang="KO">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="정보배">
<title>월드비전 공지사항 수정</title>
<link rel="stylesheet" href="${contextPath}/css/common.css">
<link rel="stylesheet" href="${contextPath}/css/noticeWrite.css">
<link rel="stylesheet" href="${contextPath}/css/mmenu-light.css">
<link rel="stylesheet" href="${contextPath}/css/mburger.css">
<script src="https://kit.fontawesome.com/9d91dfe9ed.js" crossorigin="anonymous"></script>
<script type="text/javascript">
function valChk(){
	var ttl = document.getElementById('title');	
	var con = document.getElementById('content');
	var writeForm = document.writeForm;
	
	if(ttl.value==""){
		alert("제목을 입력해주세요.");
		ttl.focus();
	}else if(con.value==""){
		alert("내용을 입력해주세요.");
		con.focus();
	}else if(ttl!=""&& con!=""){
		writeForm.method="post";
		writeForm.action="/WorldVision/worldVision.jb?type=noticeUpdate&seq=${notice.seq}";  
		writeForm.submit();
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
			<form name="writeForm">
				<div id="conArea">
					<label>제목</label>
					<input type="text" name="title" id="title" class="inputTop" value="${notice.title }">
					<label>작성자</label>
					<input type="text" name="writer" id="writer" value="관리자" readonly class="inputTop">	
					<br>
					<label>내용</label><br>
					<textArea name="content" id="content">${notice.content}</textArea >
				</div>
				<div class="buttons">
					<input type="reset" value="취소" >
					<input type="button" value="수정완료" onclick="valChk();">
				</div>
			</form>
		</div>
		<!-- //contentWrap -->

		<script src="${contextPath}/js/mmenu-light.js"></script>
		<script src="${contextPath}/js/hidemenu.js"></script>
		<%@ include file="../footer.jsp"%>
		
		
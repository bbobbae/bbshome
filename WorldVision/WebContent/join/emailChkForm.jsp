<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="정보배">
<title>이메일 중복 체크</title>
<link rel="stylesheet" href="${contextPath}/css/emailChkForm.css">
</head>
<body onload="pValue()">
	<div id="wrap">
		<br> <b><font size="4" color="#ff6600">이메일 중복체크</font></b>
		<hr width="460">
		<br>
		<p id="pTxt">이메일은 한글을 제외한 영문 대소문자, 특수문자(./-/_), 숫자가 사용가능 합니다.</p>
		<div id="chk">
			<form id="checkForm">
				<input type="text" name="emailinput1" id="emailinput1"> &nbsp;@&nbsp; <input type="text" name="emailinput2" id="emailinput2"> <input type="button" id="chkBtn" value="중복확인" onclick="emailCheck();">
			</form>
			<div id="msg"></div>
			<br> <input id="cancelBtn" type="button" value="취소" onclick="window.close();"><br> <input id="useBtn" type="button" value="사용하기" onclick="sendCheckValue();">
		</div>
	</div>

	<script type="text/javascript" src="${contextPath}/js/emailChkForm.js"></script>

</body>
</html>

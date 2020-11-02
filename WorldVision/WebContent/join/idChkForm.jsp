<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="<%= request.getContextPath()%>"></c:set>
<!DOCTYPE html>
<html lang="KO">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="정보배">
<title>아이디 중복 체크</title>
<link rel="stylesheet" href="${contextPath}/CSS/idChkForm.css">
</head>
<body onload="pValue()">
	<div id="wrap">
		<br> <b><font size="4" color="#ff6600">아이디 중복체크</font></b>
		<hr width="460">
		<br>
		<p id="pTxt">아이디는 영문+숫자 조합으로 4~16자 이내로 입력해 주세요.</p>
		<div id="chk">
			<form id="checkForm">
				<input type="text" name="idinput" id="userId"> <input type="button" id="chkBtn" value="중복확인" onclick="idCheck()">
			</form>
			<div id="msg"></div>
			<br> <input id="cancelBtn" type="button" value="취소" onclick="window.close()"><br> <input id="useBtn" type="button" value="사용하기" onclick="sendCheckValue()">
		</div>
	</div>

	<script type="text/javascript" src="${contextPath}/js/idChkForm.js"></script>

</body>
</html>

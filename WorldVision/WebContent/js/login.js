//저장된 쿠키 불러오는 함수
window.onload = function() {
	if (getCookie("id")) {
		document.frmlogin.userId.value = getCookie("id");
		document.frmlogin.idsave.checked = true;
	}
}

//쿠키 저장해주는 함수
function setCookie(name, value, expiredays) {
	var todayDate = new Date();
	todayDate.setDate(todayDate.getDate() + expiredays);
	document.cookie = name + "=" + escape(value) + "; path=/; expires="
			+ todayDate.toGMTString() + ";"
}

// 쿠키 불러오는 함수
function getCookie(Name) {
	var search = Name + "=";
	if (document.cookie.length > 0) {
		offset = document.cookie.indexOf(search);
		if (offset != -1) {
			offset += search.length;
			end = document.cookie.indexOf(";", offset);
			if (end == -1)
				end = document.cookie.length;
			return unescape(document.cookie.substring(offset, end));
		}
	}
}

//로그인 아이디 정규식
function nowIdchk(rule) {
	var str = rule.value;
	if (str.match(/[^a-z||0-9||A-Z]/g)) { //정해진 형식과 맞지 않으면 onblur 기능으로 인풋창 밑으로 안내문구 뜸
		document.getElementById("idInfo").style.display = "block";
		rule.value = "";
		return false;
	} else {
		document.getElementById("idInfo").style.display = "none";
	}
}



//로그인 버튼  함수
function loginBtn() {
	var tagForm1 = document.frmlogin; //폼테그 담는 변수
	var showId = document.getElementById("userId").value; //아이디값 담는 변수
	var showPwd = document.getElementById("userPwd").value; //비밀번호값 담는 변수
	var login = false; //로그인 성공여부 담는 변수               

	//아이디 저장 체크 여부에 따라 쿠키 값 지정
	if (tagForm1.idsave.checked == true) {
		setCookie("id", tagForm1.userId.value, 7); //위에서 지정한 함수값대로 이름,값,기간 지정
	} else {
		setCookie("id", tagForm1.userId.value, 0); //기간 0으로 설정, 저장되지 않음
	}

	if (showId==" ") {
		alert("공백은 입력하실 수 없습니다.");
		login = false;
		return frmlogin.userId.focus();
	} else if (showPwd == "") {
		alert("공백은 입력하실 수 없습니다.");
		login = false;
		return frmlogin.userPwd.focus();
	} else if(showId!=null &&showPwd!=null){
		tagForm1.method="post";
		tagForm1.action="/WorldVision/worldVision.jb?type=login";
		tagForm1.submit();
	}
}









var httpRequest = null;

// httpRequest 객체 생성
function getXMLHttpRequest() {
	var httpRequest = null;

	if (window.ActiveXObject) {
		try {
			httpRequest = new ActiveXObject("Msxml2.XMLHTTP");
		} catch (e) {
			try {
				httpRequest = new ActiveXObject("Microsoft.XMLHTTP");
			} catch (e2) {
				httpRequest = null;
			}
		}
	} else if (window.XMLHttpRequest) {
		httpRequest = new window.XMLHttpRequest();
	}
	return httpRequest;
}

// 회원가입창의 아이디 입력란의 값을 가져온다.
function pValue() {
	document.getElementById("emailinput1").value = opener.document.userInfo.email1.value;
	document.getElementById("emailinput2").value = opener.document.userInfo.email2.value;
}

// 아이디 중복체크
function emailCheck() {

	var email1 = document.getElementById("emailinput1").value;
	var email2 = document.getElementById("emailinput2").value;
	var email = email1+"@"+email2;
	var email1Pattern =/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z]){4,20}$/;  
	var email2Pattern =/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/    // 이메일계정2형식

	
	if (!email1 || !email2) {
		alert("공백은 입력하실 수 없습니다.");
		return false;
	}else if (!email1Pattern.test(email1) && !email2Pattern.test(email2)){
		alert("사용 불가능한 이메일 주소입니다.");
		return false;
	}else if (!email1Pattern.test(email1) ){
		alert("사용 불가능한 이메일 아이디입니다.");
		return false;
	} else if(!email2Pattern.test(email2)){
		alert("사용 불가능한 이메일 도메인 입니다.")		
	}else {
		var param = "email="+email;
		httpRequest = getXMLHttpRequest();
		httpRequest.onreadystatechange = callback;
		httpRequest.open("POST",
				"/WorldVision/worldVision.jb?type=emailCheckAction", true);
		httpRequest.setRequestHeader('Content-Type',
				'application/x-www-form-urlencoded');
		httpRequest.send(param);
	}
}

function callback() {
	if (httpRequest.readyState == 4) {
		// 결과값을 가져온다.
		var resultText = httpRequest.responseText;
		if (resultText == 0) {
			alert("사용할수없는 이메일입니다.");
			document.getElementById("cancelBtn").style.visibility = 'visible';
			document.getElementById("useBtn").style.visibility = 'hidden';
			document.getElementById("msg").innerHTML = "";
		} else if (resultText == 1) {
			document.getElementById("cancelBtn").style.visibility = 'hidden';
			document.getElementById("useBtn").style.visibility = 'visible';
			document.getElementById("msg").innerHTML = "사용 가능한 이메일입니다.";
		}
	}
}

// 사용하기 클릭 시 부모창으로 값 전달 
function sendCheckValue() {
	// 중복체크 결과인 emailCheck 값을 전달한다.
	opener.document.userInfo.emailChkValue.value = "emailCheck";
	// 회원가입 화면의 email입력란에 값을 전달
	opener.document.userInfo.userEmail1.value = document.getElementById("emailinput1").value;
	opener.document.userInfo.userEmail2.value = document.getElementById("emailinput2").value;
	if (opener != null) {
		opener.chkForm = null;
		self.close();
	}
}
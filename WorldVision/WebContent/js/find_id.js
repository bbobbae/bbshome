//정규식 표현
var namePattern = /^[가-힣]{2,10}|[a-zA-Z]{2,10}$/; //이름패턴
var emailPattern = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

var phonePattern = /^01([0|1|6|7|8|9]?)([0-9]{4})([0-9]{4})$/;
var SetTime = 180;		// 최초 설정 시간(기본 : 초)

//유효시간 이벤트
var confirm = false;      //휴대폰 번호 input칸의 값을 담는 변수
var confirm2 = false;     //휴대폰 번호 input칸의 값을 담는 변수
var randomNum;           // 랜덤함수의 변수

var chkNum1 = false;	//휴대폰 번호로 아이디찾을떄 인증번호 발송을 했는지에 대한 여부를 담을 변수
var chkNum2 = false;	//이메일주소로 아이디찾을때 인증번호 발송을 했는지에 대한 여부를 담을 변수




//========================휴대폰으로 찾기===========================
//휴대폰번호 인증번호발송
function numChk(){
    confirm = document.getElementById("phoneNum1").value;              //휴대폰번호 input의 id값 사용 
    randomNum = Math.floor(Math.random() * 1000000)+100000;          //랜덤함수 담은 변수
    if(randomNum>1000000){
        randomNum = randomNum - 100000;
    }

    if(phonePattern.test(confirm)==true){                            //휴대폰 번호 형식 확인
    	alert("입력하신 휴대폰 번호로 인증번호가 발송되었습니다.");
        console.log(randomNum);
        tid=setInterval('msg_time()',1000);
        document.getElementById("hideArea").style.display="block";   // 발송버튼 클릭 후 인증번호 확인구역 나타남
		document.getElementById("timer").style.display="block"; 
    	document.getElementById("ViewTimer").style.display="block";
        chkNum1 = true;
    }else if(phonePattern.test(confirm)==false){
        alert('휴대폰 형식과 맞지 않습니다. 다시한번 입력해주세요.');         //휴대폰 번호 형식 확인
        chkNum1 = false;
    }else if(confirm=""){ 
        alert("공백은 입력하실 수 없습니다.")
        chkNum1 = false;
    }
}


var chkResult=false;	//인증번호 일치 여부를 담은 변수

function codeChk(){
	var chkVal = document.getElementById("verificationCode1").value;
	
	if(chkVal==""){
		alert("공백은 입력하실 수 없습니다.");
		chkResult=false;
	}else if(chkVal != randomNum){
		alert("인증번호가 일치하지 않습니다.");
		chkResult=false;
	}else if(chkVal == randomNum){
		alert("인증되었습니다.");
		chkResult=true;
		document.getElementById("timer").style.display="none"; 
    	document.getElementById("ViewTimer").style.display="none";
    
	}
}

//핸드폰번호로 아이디찾기 최종 확인 이벤트
function numCkBtn1() {
	var idSerch = document.idSerch; //폼테그 담은 변수
	var phoneName = document.getElementById('phoneName1').value;
	var phoneNum1 = document.getElementById('phoneNum1').value;
	var chkCode = document.getElementById('verificationCode1').value;	//인증번호 입력값
	var tagForm2= document.getElementsByName('idSerch')[0];
	

	if (phoneName == "") {
		alert("이름에 공백은 입력하실 수 없습니다.");
		return idSerch.phoneName1.focus();
	} else if (phoneNum1 == "") {
		alert("휴대폰번호에 공백은 입력하실 수 없습니다.");
		return idSerch.phoneNum1.focus();
	} else if (namePattern.test(phoneName) == false) {
		alert("이름 형식과 일치하지 않습니다. \n다시 한번 입력해주세요.");
		return idSerch.phoneName.focus();
	} else if(chkNum1 == false){
		alert("인증번호를 발송해 주세요");
	} else if(chkResult ==false ){
		alert("인증번호 확인을 해주세요.");
	} else if ((namePattern.test(phoneName)) && (phonePattern.test(phoneNum1) && chkResult==true)){
		if((chkCode==randomNum)){
			idSerch.method = "post"; //서버에 값 전송
			idSerch.action = "/WorldVision/worldVision.jb?type=find_id"; //서버에 값 전송
			idSerch.submit(); //서버에 값 전송
		}
	}		
}


//========================이메일로 찾기===========================

//이메일 인증번호발송
function numChk2(){
	confirm2 = document.getElementById("phoneNum2").value;              //휴대폰번호 input의 id값 사용 
    
    randomNum = Math.floor(Math.random() * 1000000)+100000;          //랜덤함수 담은 변수
    if(randomNum>1000000){
        randomNum = randomNum - 100000;
    }

    if(emailPattern.test(confirm2)==true){                            //휴대폰 번호 형식 확인
    	alert("입력하신 이메일로 인증번호가 발송되었습니다.");
        console.log(randomNum);
        tid=setInterval('msg_time()',1000);
        document.getElementById("hiddenArea").style.display="block"; 
        chkNum2 = true;
		document.getElementById("timer2").style.display="block"; 
    	document.getElementById("ViewTimer2").style.display="block";
    }else if(emailPattern.test(confirm2)==false){
        alert('이메일 형식과 맞지 않습니다. 다시한번 입력해주세요.');         //휴대폰 번호 형식 확인
        chkNum2 = false;
    }else if(confirm2=""){ 
        alert("공백은 입력하실 수 없습니다.")
        chkNum2 = false;
    }
}

var chkResult2=false;
//인증번호 일치 확인
function codeChk2(){
	var chkVal2 = document.getElementById("verificationCode2").value;
	
	if(chkVal2==""){
		alert("공백은 입력하실 수 없습니다.");
		chkResult2=false;
	}else if(chkVal2 != randomNum){
		alert("인증번호가 일치하지 않습니다.");
		chkResult2=false;
	}else if(chkVal2==""){
		alert("공백은 입력하실 수 없습니다.");
		chkResult2=false;
	}else if(chkVal2 == randomNum){
		alert("인증되었습니다.");
		chkResult2=true;
		document.getElementById("timer2").style.display="none"; 
    	document.getElementById("ViewTimer2").style.display="none";
	}
}


//이메일주소 최종 확인 이벤트
function numCkBtn2() {
	var idSerch = document.idSerch; //폼테그 담은 변수
	var phoneName2 = document.getElementById('phoneName2').value; //이름 input의 id값 사용 
	var phoneNum2 = document.getElementById('phoneNum2').value; //이메일 주소 input의 id값 사용
	var tagForm2 = document.getElementsByName('idSerch')[0]; //서버로 값을 넘기기 위한 변수   
	var chkCode2 = document.getElementById('verificationCode2').value;	//인증번호 입력값
	
	if (phoneName2 == "") {
		alert("이름에 공백은 입력하실 수 없습니다.");
		return idSerch.phoneName2.focus();
	} else if (phoneNum2 == "") {
		alert("이메일주소에 공백은 입력하실 수 없습니다.");
		return idSerch.phoneNum2.focus();
	} else if (namePattern.test(phoneName2) == false) {
		alert("이름형식과 일치하지 않습니다. \n다시 한번 입력해주세요.");
		return idSerch.phoneName2.focus();
	} else if (emailPattern.test(phoneNum2) == false) {
		alert("이메일형식과 일치하지 않습니다. \n다시 한번 입력해주세요.");
		return idSerch.phoneNum2.focus();
	} else if(chkResult2 ==false ){
		alert("인증번호 확인을 해주세요.");
	}else if ((namePattern.test(phoneName2)) && (emailPattern.test(phoneNum2) && chkResult2==true)){
		if((chkCode2==randomNum)){
			idSerch.method = "post"; //서버에 값 전송
			idSerch.action = "/WorldVision/worldVision.jb?type=find_id"; //서버에 값 전송
			idSerch.submit(); //서버에 값 전송
		}
	}	
}






//========================공통==========================

//인증번호 발송 타이머 함수
function msg_time() {	
    m = Math.floor(SetTime/60) + "분 " + (SetTime % 60) + "초";	// 남은 시간 계산
    document.getElementById("timer").innerHTML = m;
    document.getElementById("timer2").innerHTML = m;
    document.all.ViewTimer.innerHTML = "<font color='green'>고객님의 휴대폰번호로 인증번호가 발송되었습니다.</font>"; 
    document.all.ViewTimer2.innerHTML = "<font color='green'>고객님의 이메일 주소로 인증번호가 발송되었습니다.</font>";
    SetTime--;					    // 1초씩 감소
      if (SetTime < 0) {			
    	  clearInterval(tid);		// 타이머 해제
    	  document.getElementById("timer").style.display="none"; 
    	  document.getElementById("timer2").style.display="none"; 
    	  document.all.ViewTimer.innerHTML = "<font color='red'>인증시간이 만료되었습니다. 인증번호를 다시 발송해주세요.</font>";
    	  document.all.ViewTimer2.innerHTML = "<font color='red'>인증시간이 만료되었습니다. 인증번호를 다시 발송해주세요.</font>";
      }
}


function rsBtn(){
	document.getElementById("timer").style.display="none"; 
	document.getElementById("ViewTimer").style.display="none";
	document.getElementById("timer2").style.display="none"; 
	document.getElementById("ViewTimer2").style.display="none";
}



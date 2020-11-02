
var email1Pattern =/^[A-Za-z0-9_\.\-]+$/;                       // 이메일 계정1 형식
var email2Pattern =/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/;       // 이메일계정2형식
var phonePattern = /^01([0|1|6|7|8|9]?)([0-9]{4})([0-9]{4})$/;
var SetTime = 180;		// 최초 설정 시간(기본 : 초)

// 아이디 형식확인
function idkey(){
    var idPattern = /^[A-za-z0-9]{4,16}$/;
    var userId = document.getElementById('userId').value;
    if(userId==""){
        document.getElementById("idP1").innerHTML = "";
    }else if(!idPattern.test(userId)) {
        document.getElementById("idP1").innerHTML = "<font color='red'>!,@,#,$ 와 같은 특수문자, 한글, 공백 등을 포함하실 수 없으며,<br> 4~16 자리만 입력 가능합니다.</font>";
        
    }else{
        document.getElementById("idP1").innerHTML = "<font color='green'>올바른 형식의 아이디 입니다.</font>";
       
    }
}

// 비밀번호 형식확인
var userPwd1;
function pwdKey1() {
	var pwdPattern=/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{4,20}$/;
    userPwd1 = document.getElementById('userPwd').value;
    if(userPwd1==""){
        document.getElementById("pwdP1").innerHTML = "";
    }else if (!pwdPattern.test(userPwd1)) {
        document.getElementById("pwdP1").innerHTML = "<font color='red'>한글, 공백 등을 포함하실 수 없으며, 특수문자를 포함한 4~20 자리만 입력 가능합니다.</font>";
    } else {
        document.getElementById("pwdP1").innerHTML = "<font color='green'>올바른 비밀번호 입니다.</font>";
    }

}

// 비밀번호 일치, 형식 확인
function pwdKey2() {
    var userPwd2 = document.getElementById('userPwd2').value;
    if(userPwd2==""){
        document.getElementById("pwdP2").innerHTML = "";
    }else if (userPwd1 != document.getElementById("userPwd2").value) {
        document.getElementById("pwdP2").innerHTML = "<font color='red'>비밀번호가 일치하지 않습니다..</font>";
    }else{
        document.getElementById("pwdP2").innerHTML = "<font color='green'>비밀번호가 일치합니다.</font>";
    }
}

// 이름 형식확인
function nameKey(){
    var namePattern = /^[a-zA-Z가-힣]{2,20}$/;
    var userName = document.getElementById('userName').value;
    if(userName==""){
        document.getElementById("nameP").innerHTML = "";
    }else if (!namePattern.test(userName)){
        document.getElementById("nameP").innerHTML = "<font color='red'>숫자, 특수문자, 공백을 포함하실 수 없습니다.</font>";
    }else{
        document.getElementById("nameP").innerHTML = "<font color='green'>올바른 형식의 이름입니다.</font>";
    }
}

// 생년월일 형식 확인
function birthKey(){
    var birthPattern =/^[0-9]{8}$/;
    var userBirthday = document.getElementById('userBirthday').value;
    if(userBirthday==""){
        document.getElementById("birthP").innerHTML = "";
    }else if(!birthPattern.test(userBirthday)) {
        document.getElementById("birthP").innerHTML = "<font color='red'>!,@,#,$ 와 같은 특수문자, 한글, 공백 등을 포함하실 수없습니다.</font>";
    }else{
        document.getElementById("birthP").innerHTML = "<font color='green'>올바른 형식의 생년월일 입니다.</font>";
    }            
}

// 핸드폰번호 형식 확인
function phoneKey(){
     
    var userNum = document.getElementById('userNum').value;
    if(userNum==""){
        document.getElementById("phoneP").innerHTML = "";
    }else if(!phonePattern.test(userNum)) {
        document.getElementById("phoneP").innerHTML = "<font color='red'>!,@,#,$ 와 같은 특수문자, 한글, 공백 등을 포함하실 수없습니다.</font>";
    }else{
        document.getElementById("phoneP").innerHTML = "<font color='green'>올바른 형식의 휴대폰 번호 입니다.</font>";
    }            
}

// 인증번호 발송 타이머 함수
function msg_time() {	
    m = Math.floor(SetTime / 60) + "분 " + (SetTime % 60) + "초";	// 남은 시간 계산
    document.all.ViewTimer.innerHTML = "고객님의 휴대폰번호로 인증번호가 발송되었습니다. "+ m ; 
    SetTime--;					    // 1초씩 감소
        if (SetTime < 0) {			
            clearInterval(tid);		// 타이머 해제
            document.all.ViewTimer.innerHTML = "인증시간이 만료되었습니다. 인증번호를 다시 발송해주세요.";
        }
}




// 아이디 중복확인 버튼 이벤트
var value = false; // 아이디 input에 입력되는 값의 논리를 구하기 위한 변수
var inpId;  // 아이디 input칸에 입력되는 값을 담는 변수

function confirmId() {         
    inpId = document.getElementById("userId").value; // 아이디 input의 id값 사용
    var popupX = (window.screen.width / 2) - (600 / 2);
    var popupY= (window.screen.height /2) - (300 / 2);
    
    if(inpId==""){
        alert("아이디 중복확인에 공백은 입력하실수 없습니다. \n다시 한번 확인해주세요.");
        return false;
    }
    console.log("중복확인 값 :" + value);  
    
    window.name="parentForm";
    window.open("idChkForm.jsp","idcheackForm","width=600, height=300, resizable = no, scrollbars = no, left="+popupX+",top="+popupY+", screenX="+popupX+"screenY="+popupY);    
    

}




//아이디 중복체크 되었는지 확인하는 값
function inputIdChk(){
	document.userInfo.idChkValue.value ="idUnchk";
}



//이메일 중복체크 되었는지 확인하는 값
var value1 = false;     // 이메일 입력값 논리담는
var value2 = false; 
function inputEmailChk(){
	document.userInfo.emailChkValue.value ="emailUnchk";
}



// radio 를 이용한 성별 선택 이벤트
var gender1 = false; // 성별선택 남
var gender2 = false; // 성별선택 여

function genderCheck(){  
    
    gender1 = document.getElementsByClassName("genderRadio")[0].checked; // 성별radio class값 사용
    gender2 = document.getElementsByClassName("genderRadio")[1].checked; // 성별radio class값 사용

    if(gender1==false){
        gender1=true;
        gender2=false;
    }else{
        gender1=false;
        gender2=true;
    }

    var value=false;

    if(gender1.checked){
        value=true;
    }

    console.log("남:"+gender1);
    console.log("여:"+gender2);
}



// 인증번호 발송버튼 이벤트
var confirm = false;     // 휴대폰 번호 input칸의 값을 담는 변수
var randomNum;           // 랜덤함수의 변수

function numberCheck(){
    
    confirm = document.getElementById("userNum").value;              // 휴대폰번호 input의 사용
    document.getElementById('userNum1').disabled=false;              // 인증번호 발송시인증번호확인 input칸활성화

    randomNum = Math.floor(Math.random() * 1000000)+100000;          // 랜덤함수
																		// 담은 변수
    if(randomNum>1000000){
        randomNum = randomNum - 100000;
    }

    if(phonePattern.test(confirm)==true){                            // 휴대폰
        confirm=true;
        console.log(randomNum);
        tid=setInterval('msg_time()',1000);
        document.getElementById('input6_1').style.display="block";   // 발송버튼 클릭 후 인증번호확인구역 나타남
    }else if(phonePattern.test(confirm)==false){
        alert('형식과 맞지 않습니다. 다시한번 입력해주세요.');         // 휴대폰 번호 형식 확인
    }else if(confirm=""){ 
        alert("공백은 입력하실 수 없습니다.")
        confirm=false;
    }

}


// 인증번호 확인버튼 이벤트
var confirmNum = false;  // 인증번호 입력값을 담는 변수

function confirmCheck(){

    confirmNum = document.getElementById("userNum1").value;                // 인증번호	 input의	 id값 사용
    
    if(confirmNum==""){
        alert("공백은 입력하실 수 없습니다.");
        value=false;
    }else if(confirmNum!=randomNum){                                       // 랜덤번호 일치확인
        alert("인증번호가 일치하지 않습니다. \n다시한번 확인해주세요.");
        value=false;
    }else if(confirmNum==randomNum){                                       // 랜덤번호	일치확인
        value=true;
        document.getElementById('userNum1').disabled=true;  
        document.getElementsByClassName("hide")[0].style.display="none";   // 인증번호확인후상세설명사라짐
        alert("인증번호가 일치합니다.");
}
    console.log(value);  
}

// 이메일 중복확인버튼 이벤트
var double1;            // 이메일 주소 (앞부분)입력값을 담는 변수
var double2;            // 이메일 주소 (뒷부분)입력값을 담는 변수

function doubleCheck(){
    double1 = document.getElementById("email1").value;  // 이메일 앞부분 input의 id값 사용
    double2 = document.getElementById("email2").value;  // 이메일 뒷부분 input의 id값 사용

    var popupX = (window.screen.width / 2) - (600 / 2);
    var popupY= (window.screen.height /2) - (300 / 2);
	
    if(double1=="" || double2==""){
        alert("이메일 중복확인에 공백은 입력하실수 없습니다. \n다시 한번 확인해주세요.");
        return false;
    }
    window.name="parentForm";
	window.open("emailChkForm.jsp","emailcheackForm","width=600, height=300, resizable = no, scrollbars = no, left="+popupX+",top="+popupY+", screenX="+popupX+"screenY="+popupY);    
	
    console.log("value1: "+double1);
    console.log("value2: "+double2);
    
    
}


//이메일 도메인 자동입력
function input_email(){
	document.userInfo.userEmail2.value=document.userInfo.domain.value;
}




// 필수입력 확인
// 작성완료 버튼 이벤트
function joinBtn() { 
    var formTag = document.getElementsByName("userInfo")[0];     //폼테그 넘겨주기 위한 변수
    var doubleCheck1 = document.getElementById("email1").value;  // email 중복확인 전 값과 후 값 비교위한 변수
    var doubleCheck2 = document.getElementById("email2").value;  //  email 중복확인 전 값과 후 값 비교위한 변수
    var inpId2 = document.getElementById("userId").value;        //  id 중복확인 전 값과 후 값 비교위한 변수
    var inpChk = document.userInfo;                              // 폼테크 담은 변수

    if(inpChk.userId.value==""){
        alert('아이디를 입력해주세요');
        document.getElementById("userId").focus();
        return false; 
    }else if(inpChk.idChkValue.value=="idUnchk"){
        alert("아이디 중복 확인을 하지 않으셨습니다.\n아이디 중복 확인 후 회원가입이 가능합니다."); // 중복확인된 id값과 현재 입력된 id값 비교
        document.getElementById("userId").focus();
        return false; 
    }else if( inpId != inpId2){
    	alert("아이디 중복확인 후 회원가입이 가능합니다.");
    	return false;
    }else if(inpChk.userPwd.value==""){
        alert("비밀번호를 입력해주세요.");
        document.getElementById("userPwd").focus();
        return false; 
    }else if(inpChk.userPwd2.value==""){
        alert("비밀번호 재입력을 입력해주세요");
        return inpChk.userPwd2.focus();
    }else if(inpChk.userPwd2.value!==userPwd.value){
        alert("비밀번호가 일치하지 않습니다.");
        return inpChk.userPwd2.focus();
    }else if(inpChk.userName.value==""){
        alert("이름을 입력해주세요.");
        return inpChk.userName.focus();
    }else if(inpChk.userBirthday.value==""){
        alert("생년월일을 입력해주세요.");
        return inpChk.userBirthday.focus();
    }else if(gender1==false && gender2==false){
        alert("성별을 선택해주세요.");                 
    }else if(inpChk.userNum.value==""){
        alert("휴대폰 번호를 입력해주세요."); 
        return inpChk.userNum.focus();
    }else if(confirm==false){
        alert("인증번호를 전송해주세요.");                
    }else if(inpChk.userNum1.value==""){
        alert("인증번호를 입력해주세요.");
        return inpChk.userNum1.focus();
    }else if(confirmNum==false){
        alert("인증번호를 확인해주세요.");
    }else if(doubleCheck1=="" || doubleCheck2=="" ){
        alert("이메일을 입력해 주세요"); // 중복확인된 email값과 현재 입력된 email값 비교
    }else if(double1!=doubleCheck1 || double2!=doubleCheck2 ){
        alert("이메일 중복 확인을 하지 않으셨습니다.\n이메일 중복 확인 후 회원가입이 가능합니다."); // 중복확인된 email값과 현재 입력된 email값 비교
    }else if(inpChk.emailChkValue.value=="emailUnchk"){
        alert("이메일 주소 중복확인 버튼을 클릭해주세요.");
    }
    else if(inpId==inpId2 && double1==doubleCheck1 && double2==doubleCheck2 ){
        alert(inpId2+"님 회원 가입을 축하합니다.");
        inpChk.method ="post";
        inpChk.action ="/WorldVision/worldVision.jb?type=register";
        inpChk.submit();
    }
}
    


var email1Pattern =/^[A-Za-z0-9_\.\-]+$/;                       //이메일 계정1 형식
var email2Pattern =/^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;       //이메일 계정2 형식
var phonePattern = /^01([0|1|6|7|8|9]?)([0-9]{4})([0-9]{4})$/;

var SetTime = 180;		// 최초 설정 시간(기본 : 초)
var idVl = false;
var pwdVl = false;


//비밀번호 일치, 형식 확인 
function pwdKey2() {
	var userPwd = document.getElementById('userPwd').value;	//기존
    var newPwd = document.getElementById('newPwd').value;	//새
    var pwdPattern=/^(?=.*[A-Za-z])(?=.*\d)(?=.*[$@$!%*#?&])[A-Za-z\d$@$!%*#?&]{4,20}$/; 
    
    if(newPwd==""){
        document.getElementById("pwdP2").innerHTML = "";
        pwdVl = false;
    }else if (userPwd == document.getElementById("newPwd").value) {
        document.getElementById("pwdP2").innerHTML = "<font color='red'>기존 비밀번호와 일치합니다.</font>";
        pwdVl = false;
    }else if (!pwdPattern.test(newPwd)) {
        document.getElementById("pwdP2").innerHTML = "<font color='red'>한글, 공백 등을 포함하실 수 없으며, 특수문자를 포함한 4~20 자리만 입력 가능합니다.</font>";
    } else if(pwdPattern.test(newPwd)) {
        document.getElementById("pwdP2").innerHTML = "<font color='green'>올바른 비밀번호 입니다.</font>";
    }
      
    
}



//핸드폰번호 형식 확인
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

//인증번호 발송 타이머 함수
function msg_time() {	
    m = Math.floor(SetTime / 60) + "분 " + (SetTime % 60) + "초";	// 남은 시간 계산
    document.all.ViewTimer.innerHTML = "고객님의 휴대폰번호로 인증번호가 발송되었습니다. "+ m ; 
    SetTime--;					    // 1초씩 감소
        if (SetTime < 0) {			
            clearInterval(tid);		// 타이머 해제
            document.all.ViewTimer.innerHTML = "인증시간이 만료되었습니다. 인증번호를 다시 발송해주세요.";
        }
}


//휴대인증번호 발송버튼 이벤트
var confirm = false;     //휴대폰 번호 input칸의 값을 담는 변수
var randomNum;           // 랜덤함수의 변수

function numberCheck(){
    
    confirm = document.getElementById("userNum").value;              //휴대폰번호 input의 id값 사용 
    document.getElementById('userNum1').disabled=false;              //인증번호 발송시 인증번호 확인 input칸 활성화

    randomNum = Math.floor(Math.random() * 1000000)+100000;          //랜덤함수 담은 변수
    if(randomNum>1000000){
        randomNum = randomNum - 100000;
    }

    if(phonePattern.test(confirm)==true){                            //휴대폰 번호 형식 확인
        confirm=true;
        console.log(randomNum);
        tid=setInterval('msg_time()',1000);
        document.getElementById('input6_1').style.display="block";   // 발송버튼 클릭 후 인증번호 확인구역 나타남
    }else if(phonePattern.test(confirm)==false){
        alert('형식과 맞지 않습니다. 다시한번 입력해주세요.');         //휴대폰 번호 형식 확인
    }else if(confirm=""){ 
        alert("공백은 입력하실 수 없습니다.")
        confirm=false;
    }

}


//인증번호 확인버튼 이벤트
var confirmNum = false;  // 인증번호 입력값을 담는 변수

function confirmCheck(){

    confirmNum = document.getElementById("userNum1").value;                //인증번호 input의 id값 사용
    
    if(confirmNum==""){
        alert("공백은 입력하실 수 없습니다.");
        value=false;
    }else if(confirmNum!=randomNum){                                       //랜덤번호 일치확인
        alert("인증번호가 일치하지 않습니다. \n다시한번 확인해주세요.");
        value=false;
    }else if(confirmNum==randomNum){                                       //랜덤번호 일치확인
        value=true;
        document.getElementById('input6_1').style.display="none";                 //인증번호 확인 후 구역사라짐
        alert("인증번호가 일치합니다.");
        
    }
    console.log(value);  
}

//이메일 중복확인버튼 이벤트        
var value1 = false;     //이메일 입력값 논리담는
var value2 = false;  
var double1;            //이메일 주소 (앞부분)입력값을 담는 변수
var double2;            //이메일 주소 (뒷부분)입력값을 담는 변수


function doubleCheck(){
    double1 = document.getElementById("email1").value;  // 이메일 앞부분 input의 id값 사용
    double2 = document.getElementById("email2").value;  // 이메일 뒷부분 input의 id값 사용

    if(double1=="" && double2!=""){
        alert("공백은 입력하실 수 없습니다.");
        value1=false;
        value2=true;
    }else if(double1!="" && double2==""){
        alert("공백은 입력하실 수 없습니다.")
        value2=true;
        value2=false;
    }else if(double1=="" && double2==""){
        alert("공백은 입력하실 수 없습니다.")
        value1=false;
        value2=false;
    }else if(!email1Pattern.test(double1) && email2Pattern.test(double2)){    //지정된 input 형식과 맞는지 확인
        alert("사용 불가능한 이메일 주소입니다.")
        value1=false;
        value2=true;
    }else if(email1Pattern.test(double1) && !email2Pattern.test(double2)){    //지정된 input 형식과 맞는지 확인
        alert("사용 불가능한 이메일 주소입니다.")
        value1=true;
        value2=false;
    }else if(!email1Pattern.test(double1) && !email2Pattern.test(double2)){    //지정된 input 형식과 맞는지 확인
        alert("사용 불가능한 이메일 주소입니다.")
        value1=false;
        value2=false;
    }else if(email1Pattern.test(double1) && email2Pattern.test(double2)){     //지정된 input 형식과 맞는지 확인
        alert("사용 가능한 이메일 주소입니다.")
        value1=true;
        value2=true;
    }
    console.log("value1: "+double1);
     console.log("value2: "+double2);
}

//필수입력 확인
//작성완료 버튼 이벤트
function joinBtn() { 
    var formTag = document.getElementsByName("userInfo")[0];     //폼테그 값 넘겨주기 위한 변수
    var doubleCheck1 = document.getElementById("email1").value;  //email 중복확인 전 값과 후 값 비교위한 변수
    var doubleCheck2 = document.getElementById("email2").value;  //email 중복확인 전 값과 후 값 비교위한 변수
    var inpId2 = document.getElementById("userId").value;        // id 중복확인 전 값과 후 값 비교위한 변수
    var inpChk = document.userInfo;                              // 폼테크 담은 변수

   if(inpChk.newPwd.value==""){
        alert("새로운 비밀번호를 입력해주세요.");
        return inpChk.userPwd.focus();
    }else if(pwdVl==false){
        alert("새로운 비밀번호를 다시 한번 확인해 주세요.");
        return inpChk.userPwd2.focus();
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
    }else if(value1==false || value2==false){
        alert("이메일 주소 중복확인 버튼을 클릭해주세요.");
    }else if(double1!=doubleCheck1 || double2!=doubleCheck2){
        alert("이메일 중복 확인을 하지 않으셨습니다.\n이메일 중복 확인 후 회원가입이 가능합니다."); //중복확인된 email값과 현재 입력된 email값 비교        
    }else{
        alert(inpId2+"님 정보가 성공적으로 수정되었습니다.");
        inpChk.method ="post";
        inpChk.action ="/WorldVision/worldVision.jb?type=myPage";
        inpChk.submit();
    }
}
    

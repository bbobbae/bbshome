//후원결제방식 탭메뉴
$(document).ready(function() {
	$(".resultArea > div").last().hide();
	var radioContent = $(".resultArea > div");
	$("td#tab > input[type='radio']").click(function() {
		radioContent.hide();
		radioContent.eq($("td#tab > input[type='radio']").index(this)).show();
	});
});


//후원자 이름 불러오기
function nameChk() {
	var name = document.getElementById("sameName");
	var hiddenName = document.getElementById("hiddenName").value;
	if (name.checked == true) {
		document.getElementById("putName").value = hiddenName;
	} else {
		document.getElementById("putName").value = " ";
	}
}

//예금주 이름 불러오기
function sameChk() {
	var name = document.getElementById("sameSupporter");
	var hiddenName = document.getElementById("hiddenName").value;
	if (name.checked == true) {
		document.getElementById("inputName").value = hiddenName;
	} else {
		document.getElementById("inputName").value = " ";
	}
}

//예금주 생년월일 이름 불러오기
function birthChk() {
	var name = document.getElementById("sameBirth");
	var hiddenBirth = document.getElementById("hiddenBirth").value;
	if (name.checked == true) {
		document.getElementById("putBirth").value = hiddenBirth;
	} else {
		document.getElementById("putBirth").value = " ";
	}
}

var NumChk = false;
function bankNumChk(){
	var bankNum = document.getElementById("bankNum").value;
	if(bankNum.length < 11){
		alert("계좌번호를 다시 한번 확인해주세요.");
	}else{
		alert("계좌번호가 인증되었습니다.");
		NumChk=true;
	}
}


function next(){
	var wayForm = document.supPay;
	var card = document.getElementById("card");
	var auto = document.getElementById("auto");
	var calChk = false;
	
	var cardNm = document.getElementById("cardNm").value;
	var cardNum1 = document.getElementById("cardNum1").value;
	var cardNum2 = document.getElementById("cardNum2").value;
	var cardNum3 = document.getElementById("cardNum3").value;
	var cardNum4 = document.getElementById("cardNum4").value;
	var month = document.getElementById("month").value;
	var year = document.getElementById("year").value;
	var putName = document.getElementById("putName").value;
	
	var bankName = document.getElementById("bankName").value;
	var inputName = document.getElementById("inputName").value;
	var bankNum = document.getElementById("bankNum").value;
	var putBirth = document.getElementById("putBirth").value;
	var payAgree = document.getElementById("payAgree").checked;
	var day10 = document.getElementById("day10");
	var day25 = document.getElementById("day25");
	
	
	if(card.checked){
		if(cardNm=="-"){
			alert("카드명을 선택해주세요.");
			document.getElementById("cardNm").focus();
		}else if(cardNum1==""||cardNum2==""||cardNum3==""||cardNum4==""){
			alert("카드번호에 공백을 입력하실 수 없습니다.");
			document.getElementById("cardNum1").focus();
		}else if(cardNum1.length < 4 ||cardNum2.length < 4 ||cardNum3.length < 4 ||cardNum4.length < 4 ){
			alert("카드번호를 다시 한번 확인해주세요.");
			document.getElementById("cardNum1").focus();
		}else if(month=="-"||year=="-"){
			alert("유효기간을 다시 한번 확인해주세요.");
			document.getElementById("month").focus();
		}else if(putName==""){
			alert("카드소유주에 공백을 입력하실 수 없습니다.");
			document.getElementById("putName").focus();
		}else{calChk=true;}		
	}else if(auto.checked){
		if(bankName=="-"){
			alert("은행명을 선택해주세요.");
			document.getElementById("bankName").focus();
		}else if(inputName==""){
			alert("예금주에 공백은 입력하실 수 없습니다.");
			document.getElementById("inputName").focus();
		}else if(bankNum==""){
			alert("계좌번호에 공백은 입력하실 수 없습니다.");
			document.getElementById("bankNum").focus();
		}else if(NumChk==false){
			alert("계좌번호 인증을 해주세요.");
		}else if(putBirth==""){
			alert("생년월일에 공백은 입력하실 수 없습니다.");
			document.getElementById("putBirth").focus();
		}else if(putBirth.length < 8){
			alert("생년월일을 다시 한번 확인해주세요.");
			document.getElementById("putBirth").focus();
		}else if(!payAgree){
			alert("개인정보 수집에 동의하지 않으셨습니다.");			
		}else if(!day10.checked && !day25.checked){
			alert("이체일을 선택해주세요.");
			document.getElementById("day10").focus();
		}else{calChk=true;}
	}
	
	if(calChk==true){
		wayForm.method="post";
		wayForm.action="/WorldVision/worldVision.jb?type=supportCom";
		wayForm.submit();
	}
}













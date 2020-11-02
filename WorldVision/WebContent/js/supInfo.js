function logBtn(){
	document.getElementById("infoInp").style.display = 'block';	
}

function turnYes(){
	if(document.getElementById("Yes").checked==true){
		document.getElementById("spSym").style.display = 'block';
	}
}
function turnNo(){
	if(document.getElementById("No").checked==true){
		document.getElementById("spSym").style.display = 'none';
	}
}


function chDomain(){
	document.suppoterI.email2.value= document.suppoterI.domain.value
}


var numChk = false;
function personalNumChk(){
	var front = document.getElementById("pslFrt").value;
	var back = document.getElementById("pslBack").value;	
	
	if(front == "" || back == ""){
		alert("공백은 입력하실 수 없습니다.");
		document.getElementById("pslFrt").focus();
	}else if(front.length < 6 || back.length < 7){
		alert("주민등록 번호 형식과 일치하지 않습니다. \n 다시 한번 확인해 주세요.");
	}else{
		alert("인증되었습니다.");
		numChk = true;
	}
}


function next(){
	var supForm = document.suppoterI;
	var yes = document.getElementById("Yes");
	if(yes.checked && numChk==false ){
		alert("주민번호 본인인증을 해주세요.");
	}else{
		supForm.method="post";
		supForm.action="/WorldVision/worldVision.jb?type=supportWay"
		supForm.submit();		
	}
}



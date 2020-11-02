function final(){
	 var chk = document.lvSite.txtChk.checked;
	 var myInfo = document.lvSite;
	 
	if(!chk){
		alert("동의하지 않으셨습니다. 다시 한번 확인해주세요.");
	}else if(chk){
	
		if (confirm("정말로 회원 탈퇴를 하시겠습니까?") == true){    //확인
			myInfo.method ="post";
			myInfo.action ="/WorldVision/worldVision.jb?type=leaveSite";
			myInfo.submit();
		}else{   //취소
		    return;
		}
	}
	
}
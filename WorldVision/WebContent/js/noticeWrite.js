function valChk(){
	var ttl = document.getElementById('title');	
	var con = document.getElementById('content');
	var writeForm = document.writeForm;
	
	if(ttl.value==""){
		alert("제목을 입력해주세요.");
		ttl.focus();
	}else if(con.value==""){
		alert("내용을 입력해주세요.");
		con.focus();
	}else if(ttl!=""&& con!=""){
		writeForm.method="post";
		writeForm.action="/WorldVision/worldVision.jb?type=noticeWrite";  
		writeForm.submit();
	}
	
	
}
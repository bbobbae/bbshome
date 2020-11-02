
function reg() {
	var reg = document.getElementById("regulary").checked;
	document.getElementById("kidSup").style.display = '';
	document.getElementById("busiSup").style.display = '';
}

function priceChk(){
	var chkCount = document.getElementsByName("chkSup").length;	
	var total2 = 0;
	for (i = 0; i < chkCount; i++) {	
		if (document.getElementsByName("chkSup")[i].checked == true) {
			total2 += parseInt(document.getElementsByName("outPrice")[i].value.replace(/[^\d]+/g, ""));
		}
	}	
	document.getElementById("ttlPce").innerHTML = total2.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}


function temp() {
	var temp = document.getElementById("temporary").checked;
	
	document.getElementById("kidSup").style.display = 'none';
	document.getElementById("busiSup").style.display = '';
	document.getElementById("interKid").checked = false;
	document.getElementById("domesticKid").checked = false;
	document.getElementById("domKidPrice").style.display = 'none';
	document.getElementById("interKidPrice").style.display = 'none';
	
	priceChk();
}


var total = 0;
function price() {
	document.getElementById("supPrice").style.display = 'block';
	document.getElementById("total").style.display = 'block';
	var chkCount = document.getElementsByName("chkSup").length;
	var count = 0;
	var total2 = 0;
	for (i = 0; i < chkCount; i++) {
		if (document.getElementsByName("chkSup")[i].checked == true) {
			document.getElementsByClassName("showPr")[i].style.display = 'block';
			total2 += parseInt(document.getElementsByName("outPrice")[i].value.replace(/[^\d]+/g, ""));					
			count += 1;
		} else {
			document.getElementsByClassName("showPr")[i].style.display = 'none';			
		}		
	}	
	document.getElementById("ttlPce").innerHTML = total2.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	
	if (count == 0) {
		document.getElementById("supPrice").style.display = 'none';
		document.getElementById("total").style.display = 'none';
	}
}



function intSel(){
	var supForm = document.spPart;
	supForm.intKid.value = supForm.intKidCnt.value*30000;
	supForm.domKid.value = supForm.domKidCnt.value*50000;
	supForm.intRst.value = supForm.interPrice.value;
	supForm.domRst.value = supForm.domesticPrice.value;
	supForm.emerRst.value = supForm.emergenPrice.value;
	supForm.norRst.value = supForm.northPrice.value;
	supForm.allRst.value = supForm.allPrice.value;
	var chkCount = document.getElementsByName("chkSup").length;
	var total2=0;
	
	for (i = 0; i < chkCount; i++) {	
		document.getElementsByName("outPrice")[i].value = 
		document.getElementsByName("outPrice")[i].value.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
	}
	priceChk();

}


function inputChk(){
	
	var chkCount = document.getElementsByClassName("showPr").length;
	var chkCnt = 0;
	for( i=0; i<chkCount; i++){
		if(document.getElementsByName("chkSup")[i].checked == true){
			chkCnt++;
		}else{
			document.getElementsByClassName("chkPce")[i].disabled=true;
		}
	}
	if(chkCnt==0){
		alert("후원 종류를 1개 이상 선택해 주세요.");
		return false;
	}else {
		document.spPart.method ="post";
		document.spPart.action ="/WorldVision/worldVision.jb?type=supportInfo";
		document.spPart.submit();
	}
	
}



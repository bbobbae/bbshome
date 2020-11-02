$(document).ready(function(){
    //체크박스 전체선택 및 전체해제
    $("#chk_all").click(function(){
        if($("#chk_all").is(":checked")){
            $(".chk").prop("checked",true);
        }
        else{
            $(".chk").prop("checked",false);
        }
    });

    //한개 해제시 전체선택 해제
    $(".chk").click(function(){
        if($("input[name='chk']:checked").length==5){
            $("#chk_all").prop("checked",true);
        }
        else{
            $("#chk_all").prop("checked",false);
        }
    });

    
    $("#agree").click(function(){    
        if($("#chk2").is(":checked") == false){
            alert("필수 약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
            return false;
        }else if($("#chk3").is(":checked") == false){
            alert("필수 약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
            return false;
        }else if($("#chk4").is(":checked") == false){
            alert("필수 약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
            return false;
        }else{
            $("#agreeFm").submit();
        }
    });  

//  반응형 버젼
    $('#agreeInfo').bind('click',function(){
        $('#textbob1').toggle();
    })
    $('#personalInfo').bind('click',function(){
        $('#textbob2').toggle();
    })
    $('#interInfo').bind('click',function(){
        $('#textbob3').toggle();
    })
    $('#serviceInfo').bind('click',function(){
        $('#textbob4').toggle();
    })
   
});

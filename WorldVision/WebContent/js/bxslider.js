$(document).ready(function(){
    // 메인 왼쪽 배너
    $('.sliderTwo').bxSlider({
        auto:true,
        stopAutoOnClick:true,
        pause:4000,   
        pager:false,
        touchEnabled : (navigator.maxTouchPoints > 0),
    });

    // 메인 오른쪽 배너
    $('.kidList').bxSlider({
        auto:true,
        stopAutoOnClick:true,
        pause:3000,   
        pager:false,
        touchEnabled : (navigator.maxTouchPoints > 0),
    });
   
  


    // 캠페인 탑배너
    $('.campaignSlider').bxSlider({
        minSlides:2,
        maxSlides:2,
        slideWidth:500,
        slideMargin:30,
        pager:false,
        auto:true,
        stopAutoOnClick:true,
        pause:3000,       
        touchEnabled : (navigator.maxTouchPoints > 0),
    });

    $('.newCpSlider').bxSlider({
        slideWidth:500,
        slideMargin:30,
        pager:false,
        auto:true,
        stopAutoOnClick:true,
        pause:3000,
        touchEnabled : (navigator.maxTouchPoints > 0),	        
    });

  
    if($(window).width() >= 750) { 
        // 소식 탑배너
        $('.story').bxSlider({
            minSlides:2,
            maxSlides:2,
            slideWidth:500,
            slideMargin:30,
            pager:false,
            auto:true,
            stopAutoOnClick:true,
            pause:3000,    
            touchEnabled : (navigator.maxTouchPoints > 0),
        });
    } 
    if($(window).width() < 749) { 
        // 소식 탑배너
        $('.story').bxSlider({
            minSlides:1,
            maxSlides:1,
            slideWidth:500,
            slideMargin:30,
            pager:false,
            auto:true,
            stopAutoOnClick:true,
            touchEnabled : (navigator.maxTouchPoints > 0),
            pause:3000,    
        });
    } 

});


   
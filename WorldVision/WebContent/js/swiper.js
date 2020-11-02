$(document).ready(function(){
  // 메인베너
    var swiper = new Swiper('.slider1', {     
        spaceBetween: 0,
        centeredSlides: true,
        autoplay: {
        delay: 5000,
        disableOnInteraction: true,
        },
        pagination: {
        el: '.swiper-pagination',
        clickable: true,
        },
        navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
        },
    });
     var menuButton = document.querySelector('.menu-button');
    var openMenu = function () {
      swiper.slidePrev();
    };

});

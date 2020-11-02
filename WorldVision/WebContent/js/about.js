 var swiper = new Swiper('.swiper-container', {
          speed: 600,
          parallax: true,
          
          pagination: {
            el: '.swiper-pagination',
            clickable: true,
          },
          navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
          },
   });
   
   
 function isElementUnderBottom(elem, triggerDiff) {
	   const { top } = elem.getBoundingClientRect();
	   const { innerHeight } = window;
	   return top > innerHeight + (triggerDiff || 0);
	 }

 function handleScroll() {
	   const elems = document.querySelectorAll('.up-on-scroll');
	   elems.forEach(elem => {
	     if (isElementUnderBottom(elem, -20)) {
	       elem.style.opacity = "0";
	       elem.style.transform = 'translateY(100px)';
	     } else {
	       elem.style.opacity = "1";
	       elem.style.transform = 'translateY(0px)';
	     }
	   })
	 }

	 window.addEventListener('scroll', handleScroll);
	 
	 
	 
	 
	 
	 
	 
	 
	 
	 
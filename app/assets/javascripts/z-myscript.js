function goTo( link ){
  window.location = link;
  return false;
}

  
jQuery(document).ready(function($) {  

  // Start FLEXSlider
  jQuery('.flexslider').flexslider({
    animation: "slide"
  });
  // END FLEXSlider

  /*
  setTimeout(function(){
    document.getElementById("group3-8").click();
  },1000); */
  
  // init carusel
  $('.carousel').carousel();

  $(".owl-carousel").owlCarousel();
  
  //preloader
  setTimeout(function(){
      $("#timer51029eaee7c27d9df0fd78bb15c7eb75").css("min-width","50px");
      $("#timer51029eaee7c27d9df0fd78bb15c7eb75").css("position","relative");
  }, 1000);
  jQuery('#preloader').fadeOut('slow',function(){$(this).remove();});
  // END preloader



  // Resize owl-carusel
  funcresize();
  function funcresize() {
    var heights = $(".text-cap span").map(function() {
        return $(this).height();
    }).get(),
    maxHeight = Math.max.apply(null, heights);
    $(".text-cap").height(maxHeight);
    
  }

  setTimeout(funcresize, 1000);
  window.addEventListener("resize", func);
  //END Resize owl-carusel


});

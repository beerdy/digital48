function goTo( link ){
  window.location = link;
  return false;
}

jQuery(document).ready(function($) {  
  // init carusel
  $('.carousel').carousel();
  

  // Menu
  cbpHorizontalMenu.init();
  // END Menu


  // Start FLEXSlider
  jQuery('.flexslider').flexslider({
    animation: "slide"
  });
  // END FLEXSlider



  //preloader
  setTimeout(function(){
      $("#timer51029eaee7c27d9df0fd78bb15c7eb75").css("min-width","50px");
      $("#timer51029eaee7c27d9df0fd78bb15c7eb75").css("position","relative");
  }, 1000);
  jQuery('#preloader').fadeOut('slow',function(){$(this).remove();});
  // END preloader
  
});

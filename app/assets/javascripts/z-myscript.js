function goTo( link ){
  window.location = link;
  return false;
}

jQuery(document).ready(function($) {  
  // site preloader -- also uncomment the div in the header and the css style for #preloader
  $(window).load(function(){
      setTimeout(function(){
          $("#timer51029eaee7c27d9df0fd78bb15c7eb75").css("min-width","50px");
          $("#timer51029eaee7c27d9df0fd78bb15c7eb75").css("position","relative");
      }, 1000);
    $('#preloader').fadeOut('slow',function(){$(this).remove();});
  });
});

// init
  var preTimeSleep = 1000;

  jQuery(document).on("turbolinks:load", function() {

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
  });



// init main menu
$(function() {
  // MainMenu
  cbpHorizontalMenu.init();
  // END MainMenu  
});

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

    /* Start Preloader
    var hellopreloader = document.getElementById("hellopreloader_preload");
    function fadeOutnojquery(el){
      el.style.opacity = 1;
      var interhellopreloader = setInterval(function(){
        el.style.opacity = el.style.opacity - 0.05;
        if (el.style.opacity <=0.05){ 
          clearInterval(interhellopreloader);
          hellopreloader.style.display = "none";
        }
      }, 16 );
    }
    setTimeout(function(){ fadeOutnojquery(hellopreloader);},preTimeSleep);
    window.onload = function(){ 
      setTimeout(function(){ fadeOutnojquery(hellopreloader);},preTimeSleep);
      preTimeSleep = 1;
    }
    */// END Preloader



    // Start FLEXSlider
    jQuery('.flexslider').flexslider({
      animation: "slide"
    });
    // END FLEXSlider



    /* RedConnect
    var imported = document.createElement('script');
    imported.src = 'https://web.redhelper.ru/service/main.js?c=digital48';
    imported.charset = "utf-8";
    imported.id="rhlpscrtg";
    imported.async = "async";
    document.head.appendChild(imported);
    */// END RedConnect

    jQuery("#indexpage").on("click", function() {
      window.location = '/company/index'
    });

  });



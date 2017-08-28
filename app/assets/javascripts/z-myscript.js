// init main menu
$(function() {
  // MainMenu
  cbpHorizontalMenu.init();
  // END MainMenu  
});

// init
  var preTimeSleep = 1000;

  jQuery(document).on("turbolinks:load", function() {

    // Start Preloader
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
    // END Preloader



    // Start FLEXSlider
    jQuery('.flexslider').flexslider({
      animation: "slide"
    });
    // END FLEXSlider



    // RedConnect
    var imported = document.createElement('script');
    imported.src = 'https://web.redhelper.ru/service/main.js?c=digital48';
    imported.charset = "utf-8";
    imported.id="rhlpscrtg";
    imported.async = false;
    document.head.appendChild(imported);
    // END RedConnect

    jQuery("#indexpage").on("click", function() {
      window.location = '/company/index'
    });

  });



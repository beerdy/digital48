// Can also be used with $(document).ready()

  jQuery(document).on("turbolinks:load", function() {
    jQuery('.flexslider').flexslider({
      animation: "slide"
    });

    var imported = document.createElement('script');
    imported.src = 'https://web.redhelper.ru/service/main.js?c=digital48';
    imported.charset = "utf-8";
    imported.id="rhlpscrtg";
    imported.async = false;
    document.head.appendChild(imported);

  });


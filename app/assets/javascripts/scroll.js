$(document).ready(function (){
    $("#nav_about").click(function (){
      $('html, body').animate({
          scrollTop: $(".about").offset().top
      }, 2000);
    });
    $("#nav_contact").click(function (){
      $('html, body').animate({
          scrollTop: $(".contact").offset().top
      }, 2000);
    });
});
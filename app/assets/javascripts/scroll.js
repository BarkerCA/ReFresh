$(document).ready(function (){
  var topbar_height = 77;
  
  $("#nav_top").click(function (){
    $('html, body').animate({
        scrollTop: $("#topofpage").offset().top
    }, 2000);
  });
  $("#nav_about").click(function (){
    $('html, body').animate({
        scrollTop: $("#about_panel").offset().top
    }, 2000);
  });
  $("#nav_contact").click(function (){
    $('html, body').animate({
        scrollTop: $("#contact_panel").offset().top
    }, 2000);
  });
});
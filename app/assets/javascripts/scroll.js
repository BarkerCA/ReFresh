$(document).ready(function (){
  var topbar_height = 77;
  
  $("#nav_top").click(function (){
    $('html, body').animate({
        scrollTop: $("#topofpage").offset().top
    }, 2000);
  });
  
  $("#nav_coaching").click(function (){
    $('html, body').animate({
        scrollTop: $("#coaching").offset().top
    }, 2000);
  });
  
  $("#nav_barnabas").click(function (){
    $('html, body').animate({
        scrollTop: $("#barnabas").offset().top
    }, 2000);
  });
  
  $("#nav_leadership").click(function (){
    $('html, body').animate({
        scrollTop: $("#leadership").offset().top
    }, 2000);
  });
  
  $("#nav_about").click(function (){
    $('html, body').animate({
        scrollTop: $("#about").offset().top
    }, 2000);
  });
  $("#nav_contact").click(function (){
    $('html, body').animate({
        scrollTop: $("#contact").offset().top
    }, 2000);
  });
});
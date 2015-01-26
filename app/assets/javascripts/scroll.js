$(document).ready(function (){
  var body = $('body').height();
  var bodyminus = body - 174;
  $('#main').css({'min-height' : bodyminus});  

  $("#nav_top").click(function (){
    $('html, body').animate({
        scrollTop: $(".topofpage").offset().top
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
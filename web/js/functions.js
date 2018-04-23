$(document).ready(function () {
  var scroll_start = 0;
  var startchange = $('#startchange');
  var offset = startchange.offset();
  var flag = false;
  if($(window).innerWidth() <= 768) {
    flag = true;
  }
  if (startchange.length && !flag){
   $(document).scroll(function() { 
    scroll_start = $(this).scrollTop();
    if(scroll_start > offset.top) {
      $(".navbar").css('background-color', 'rgb(130, 93, 89)');
    }else{
      $('.navbar').css('background-color', 'transparent');
    }
  });
 } else {
   $(".navbar").css('background-color', 'rgb(130, 93, 89)');
 }
 $("a").on('click', function(event) {
  if (this.hash !== "") {
    event.preventDefault();
    var hash = this.hash;
    $('html, body').animate({
      scrollTop: $(hash).offset().top
    }, 800, function(){
      window.location.hash = hash;
    });
  } 
});
 if($(window).innerWidth() <= 768) {
   $(".navbar").css('background-color', 'rgb(130, 93, 89)');
 }
});
window.sr = ScrollReveal();
sr.reveal('.navbar-brand', { duration: 2000, origin: 'top' });
sr.reveal('.navbar-nav', { duration: 2000, origin: 'top' });
sr.reveal('.tthb', { duration: 1500, origin: 'top' });
sr.reveal('.imghb0', { duration: 2000, origin: 'bottom' });
sr.reveal('.imghb1', { duration: 2200, origin: 'bottom' });
sr.reveal('.imghb2', { duration: 2400, origin: 'bottom' });

$(document).ready(function () {
 $("a").on('click', function(event) {
  if (this.hash !== "") {
    event.preventDefault();
    var hash = this.hash;
    $('html, body').animate({
      scrollTop: $(hash).offset().top
    }, 600, function(){
      window.location.hash = hash;
    });
  } 
});
});

if($(window).innerWidth() >= 768) {
  window.sr = ScrollReveal();
  sr.reveal('.navbar-brand', { duration: 2000, origin: 'top' });
  sr.reveal('.navbar-nav', { duration: 2000, origin: 'top' });
  sr.reveal('.h2r', { duration: 1500, origin: 'top' });
  sr.reveal('.imsr0', { duration: 2000, origin: 'bottom' });
  sr.reveal('.imsr1', { duration: 2200, origin: 'bottom' });
  sr.reveal('.imsr2', { duration: 2400, origin: 'bottom' });
sr.reveal('.imgr1', { duration: 2000, origin: 'bottom' });
 sr.reveal('.imgr2', { duration: 2200, origin: 'bottom' });
 sr.reveal('.imgr3', { duration: 2400, origin: 'bottom' });
 sr.reveal('.imgr4', { duration: 2600, origin: 'bottom' });
}else {
 window.sr = ScrollReveal();
 sr.reveal('.h2r', { duration: 1500, origin: 'top' });
 sr.reveal('.imsr0', { duration: 2000, origin: 'bottom' });
 sr.reveal('.imsr1', { duration: 2200, origin: 'bottom' });
 sr.reveal('.imsr2', { duration: 2400, origin: 'bottom' });
 sr.reveal('.imgr1', { duration: 2000, origin: 'bottom' });
 sr.reveal('.imgr2', { duration: 2200, origin: 'bottom' });
 sr.reveal('.imgr3', { duration: 2400, origin: 'bottom' });
 sr.reveal('.imgr4', { duration: 2600, origin: 'bottom' });

}

$('.carousel').carousel({
  interval: 4000
})


















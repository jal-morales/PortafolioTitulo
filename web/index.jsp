<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Hostal Doña Clarita</title>
  <!--------------------------CSS-------------------------->
  <link rel="stylesheet" href="css/bs/bootstrap.css">
  <link rel="stylesheet" href="css/bs/bootstrap-grid.css">
  <link rel="stylesheet" href="css/font-awesome.css">
  <link rel="stylesheet" href="css/style.css">
  <link href="https://fonts.googleapis.com/css?family=Boogaloo|Vesper+Libre:900" rel="stylesheet"> 
  <!--------------------------Fin CSS-------------------------->
  <!---------------------------------------------------------------------------------->
  <!--------------------------Favicon-------------------------->
  <link rel="icon" type="image/png" href="img/c-favicon.png">
  <!--------------------------Fin Favicon-------------------------->
</head>
<body>
  <!--------------------------Wrap-------------------------->
  <div class="wrap">
   <!--------------------------Inicio-------------------------->
   <section id="inicio" class="in">
    <!--------------------------Navbar-------------------------->
    <div class="container-fluid">
      <div class="row">
        <nav class="stroke navbar navbar-expand-lg navbar-dark fixed-top">
          <a class="navbar-brand col-8 col-sm-6 col-md-4" href="#">
            <img src="img/logo-small.png" alt="" class="img-fluid">
          </a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
            <!--------------------------Menu-------------------------->
            <ul class="navbar-nav">
              <li class="nav-item">
                <a class="nav-link und-line" href="#inicio">INICIO</a>
              </li>
              <li class="nav-item">
                <a class="nav-link und-line" href="#habitaciones">HABITACIONES</a>
              </li>
              <li class="nav-item">
                <a class="nav-link und-line" href="#restaurant">RESTAURANT</a>
              </li>
              <li class="nav-item">
                <a class="nav-link und-line" href="#contacto">CONTACTO</a>
              </li>
              <li class="nav-item">
                <a class="nav-link lgn" href="login.html"> USUARIOS <i class="fa fa-user"></i></a> 
              </li>
            </ul>
            <!--------------------------Fin Menu-------------------------->
            <!---------------------------------------------------------------------------------->
          </div>
        </div>
      </div>
    </nav>
    <!--------------------------Fin Navbar-------------------------->
    <!---------------------------------------------------------------------------------->
  </section>
  <!--------------------------Fin Inicio-------------------------->
  <!--------------------------Header-------------------------->
  <div class="container-fluid">
    <div class="row">
      <div class="parallax img-fluid">
        <div class="text-block col-12 col-md-8">
          <h1 class="imgr1 img-fluid">¡Bienvenidos!</h1>
          <ul class="star-list">
            <li><i class="fa fa-star imgr1"></i></li>
            <li><i class="fa fa-star imgr2"></i></li>
            <li><i class="fa fa-star imgr4"></i></li>
            <li><i class="fa fa-star imgr3"></i></li>
            <li><i class="fa fa-star imgr1"></i></li>
          </ul>
          <p class=" pi text-center ">¿Buscas una hostal para tu empresa? Tenemos amplias instalaciones, habitaciones cómodas, ambiente seguro y por sobre todo muy acogedor. 
          Estás en el lugar adecuado, Doña Clarita ofrece esto y mucho más!</p>
          <a class="pi-b mx-auto p-2" href="login.html">No esperes y reserva con nosotros.</a>
        </div>
      </div>
    </div>
  </div>
  <!--------------------------Fin Header-------------------------->
  <!---------------------------------------------------------------------------------->
  <!---------------------------------------------------------------------------------->
  <!--------------------------Habitaciones-------------------------->
  <section id="habitaciones" class="hb">
    <div class="container">
      <div class="row">
       <div class="col-12">
        <h2 class="text-center h2r">HABITACIONES</h2>
      </div>
      <div class="col-12 col-md-10 col-lg-4">
        <img src="img/single-s.png" alt="" class="im imsr0 img-fluid rounded-circle">
        <h5 class="text-center">Habitaci&oacute;n Single</h5>
        <p class="text-justify">Nuestra habitación single esta diseñada para oferecer a nuestros invitados todo el comfort hogareño, con gran espacio interior y una perfecta iluminación durante el día.</p>
        <ul class="icon-list">
          <hr>
          <li><i class="fa fa-hotel"></i></li>
          <li><i class="ic fa fa-television"></i></li>
          <li><i class="ic fa fa-wifi"></i></li>
          <li><i class="ic fa fa-shower"></i></li>
          <li><i class="ic fa fa-coffee"></i></li>
          <li><i class="ic fa fa-user"></i></li>
        </ul>
      </div>
      <div class="col-12 col-md-10 col-lg-4">
        <img src="img/doble-s.png" alt="" class="im imsr1 img-fluid rounded-circle">
        <h5 class="text-center">Habitaci&oacute;n Doble</h5>
        <p class="text-justify">La habitación doble está equipada con dos camas individuales para albergar a dos personas. Un conjunto tentador de instalaciones de primera clase y un óptimo nivel de seguridad.</p>
        <ul class="icon-list">
          <hr>
          <li><i class="fa fa-hotel"></i></li>
          <li><i class="ic fa fa-television"></i></li>
          <li><i class="ic fa fa-wifi"></i></li>
          <li><i class="ic fa fa-shower"></i></li>
          <li><i class="ic fa fa-coffee"></i></li>
          <li><i class="ic fa fa-user"></i><i class="ic fa fa-user"></i></li>
        </ul>
      </div>
      <div class="col-12 col-md-10 col-lg-4">
        <img src="img/triple-s.png" alt="" class="im imsr2 img-fluid rounded-circle">
        <h5 class="text-center">Habitaci&oacute;n Triple</h5>
        <p class="text-justify">Nuestras espaciosas habitaciones triples han sido elegantemente decoradas con baño en suite y cabina de ducha, camas cómodas y amplio escritorio para hacer más agradable tu estadía.</p>
        <ul class="icon-list">
          <hr>
          <li><i class="fa fa-hotel"></i></li>
          <li><i class="ic fa fa-television"></i></li>
          <li><i class="ic fa fa-wifi"></i></li>
          <li><i class="ic fa fa-shower"></i></li>
          <li><i class="ic fa fa-coffee"></i></li>
          <li><i class="ic fa fa-users"></i></li>
        </ul>
      </div>
    </div>
  </div>
</section>
<!--------------------------Fin Habitaciones-------------------------->
<!---------------------------------------------------------------------------------->
<!--------------------------Testimonios-------------------------->
<section id="#testimonios" class="tstm">
  <div class="container-fluid">
    <div class="row">
      <div class="parallax-2 img-fluid">
        <div class="test-block col-12 col-md-10 col-lg-8">
          <div id="testimonio" class="carousel slide" data-ride="carousel">
            <div class="carousel-inner">
              <div class="carousel-item text-center active">
                <img class="rounded-circle" src="img/t1-s.png" width="180" alt="">
                <h5 class="">Martina Gómez</h5>
                <h6 class="">GoodLife</h6>
                <p class=""><i class="fa fa-quote-left"></i> Mi equipo de trabajo se hospedo por un mes, quedaron muy contentos y satisfechos con la atención preferencial de la hostal doña Clarita. <i class="fa fa-quote-right"></i></p>
              </div>
              <div class="carousel-item text-center">
                <img class="rounded-circle" src="img/t2-s.png" width="180" alt="">
                <h5 class="">Alejandra Riquelme</h5>
                <h6 class="">Sneakers Inc.</h6>
                <p class=""><i class="fa fa-quote-left"></i> Un lugar muy cómodo y seguro, nuestra estadía principalmente fue con propósitos laborales pero fue como estar de vacaciones. <i class="fa fa-quote-right"></i></p>
              </div>
              <div class="carousel-item text-center">
                <img class="rounded-circle" src="img/t3-s.png" width="180" alt="">
                <h5 class="">Daniel Soto</h5>
                <h6 class="">On Tour Viajes</h6>
                <p class=""><i class="fa fa-quote-left"></i> La señora Clara es un amor, nos hizo sentir como en casa, volveremos pronto ya que el lugar es inigualable. <i class="fa fa-quote-right"></i></p>
              </div>
            </div>
          <!--<a class="carousel-control-prev" href="#testimonio" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a class="carousel-control-next" href="#testimonio" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>-->
        </div>
      </div>
    </div>
  </div>
</section>
<!--------------------------Fin Testimonios-------------------------->
<!---------------------------------------------------------------------------------->
<!--------------------------Restaurant-------------------------->
<section id="restaurant" class="rt">
  <div class="container">
    <div class="row justify-content-center">
      <div class="col-12">
        <h2 class="text-center h2r">RESTAURANT</h2>
      </div>
      <div class="col-12 col-md-10 col-lg-6 mb-3 mb-lg-0 ">
        <img class="img-fluid rounded imgr1" src="img/r1.png" alt="">
      </div>
      <div class="col-12 col-md-10 col-lg-6 ">
       <img class="img-fluid rounded imgr2" src="img/r2.png" alt="">
       <p class="text-justify">Ofrecemos una carta de platos con alternativas de pescados y vegetarianas, Tablas para compartir, Entradas, Sandwiches y Postres, todo de elaboración propia, además de sugerencias diarias que son inspiraciones en función de productos frescos de temporada.</p>
     </div>
     <div class="col-12 col-md-10 col-lg-6 align-self-end">
       <img class="img-fluid rounded imgr3" src="img/r3.png" alt="">
       <p class="text-justify">Nuestra barra cuenta con una coctelería de autor elaborada minuciosamente por nuestro equipo, además de cervezas artesanales de la región, una variada carta de vinos con una selección de etiquetas y valles; Café de grano con una dedicada elaboración.</p>
     </div>
     <div class="col-12 col-md-10 mt-2 mt-lg-0 col-lg-6">
      <img class="img-fluid rounded imgr4" src="img/r4.png" alt="">
    </div>
  </div>
</div>
</div>
</section>
<!--------------------------Fin Restaurant-------------------------->
<!---------------------------------------------------------------------------------->
<!--------------------------Galeria-------------------------->
<!--------------------------Fin Galeria-------------------------->
<!---------------------------------------------------------------------------------->
<!--------------------------Contacto-------------------------->
<section id="contacto" class="ct">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <h2 class="text-center h2r">CONTACTO</h2>
      </div>
      <div class="col-md-7 imgr1">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3329.075460935688!2d-70.65983528514168!3d-33.44734048077487!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9662c507f91be917%3A0xcfac72a68dd4b986!2sDuoc+Uc!5e0!3m2!1sen!2scl!4v1524849491040" width="100%" height="320" frameborder="0" style="border:0" allowfullscreen></iframe>
      </div>
      <div class="col-md-5">
        <h4></h4>
        <form>
          <div class="form-group">
            <input type="text" class="form-control" name="" value="" placeholder="Nombre">
          </div>
          <div class="form-group">
            <input type="email" class="form-control" name="" value="" placeholder="E-mail">
          </div>
          <div class="form-group">
            <input type="tel" class="form-control" name="" value="" placeholder="Teléfono">
          </div>
          <div class="form-group">
            <textarea class="form-control" name="" rows="3" placeholder="Mensaje"></textarea>
          </div>
          <button class="btn btn-lg btn-primary btn-block btn-signin" id="envMje" name="btnCto" type="submit">Enviar <i class="fa fa-paper-plane"></i></button>
        </form>
      </div>
    </div>
  </div>
</section>
<!--------------------------Fin Contacto-------------------------->
<!---------------------------------------------------------------------------------->
<!--------------------------Foot-------------------------->
<section class="foot">
 <div class="f1">
   <div class="container">
     <div class="row align-items-center justify-content-md-center text-center">
      <div class="col-12 col-md-4">
        <h6>Estamos en contacto:</h6>
        <ul class="cto-list">
          <li><i class="fa fa-phone"></i> +56 9 5652 9876</li>
          <li><i class="fa fa-envelope"></i> contacto@hostaldc.cl</li>
          <li><i class="fa fa-location-arrow"></i> Alonso de Ovalle #1586</li>
        </ul>
      </div>
      <div class="line"></div>
      <div class="col-12 col-md-3 pb-3 pb-md-0">
        <h6>Síguenos!</h6>
        <ul class="rs-list">
          <li><a href="http://www.facebook.com"><i class="fa fa-facebook"></i></a></li>
          <li><a href="http://www.instagram.com"><i class="fa fa-instagram"></i></a></li>
          <li><a href="http://www.youtube.com"><i class="fa fa-youtube"></i></a></li>
          <li><a href="http://www.twitter.com"><i class="fa fa-twitter"></i></a></li>
        </ul>
      </div>
      <div class="col-12 col-md-5 mb-3 mb-md-0">
        <img class="img-fluid" src="img/logo-foot.png" alt="">
      </div>
    </div>
  </div>
</div>
<footer class="footer f2">
  <div class="container">
    <div class="row">
      <div class="col text-center">
       <p>Copyright &reg; - Hostal Doña Clarita 2018</p>
     </div>
   </div>
 </div>
</footer>
</section>
<!--------------------------Fin Foot-------------------------->
<!---------------------------------------------------------------------------------->
</div>
<!--------------------------Fin Wrap-------------------------->
<!---------------------------------------------------------------------------------->
<!--------------------------Scripts-------------------------->
<script src="js/jquery-3.3.1.js"></script>
<script src="js/bs/popper.js"></script>
<script src="js/bs/bootstrap.js"></script>
<script src="js/scrollreveal.js"></script>
<script src="js/vl/jquery.validate.js"></script>
<script src="js/vl/jquery.Rut.js"></script>
<script src="js/functions.js"></script>
<script>
</script>
<!--------------------------Fin Scripts-------------------------->
<!---------------------------------------------------------------------------------->
</body>
</html>
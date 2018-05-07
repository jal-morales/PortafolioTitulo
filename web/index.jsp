<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Hostal Doña Clarita</title>
  <!-- Css -->
  <link rel="stylesheet" href="css/bs/bootstrap.css">
  <link rel="stylesheet" href="css/bs/bootstrap-grid.css">
  <link rel="stylesheet" href="css/style.css">
  <!-- End Css -->
</head>
<body>

  <!-- Inicio -->
  <section id="inicio">
    <!-- Navbar -->
    <nav class="stroke navbar navbar-expand-md navbar-dark fixed-top" data-toggle="sticky-onscroll">
      <div class="container-fluid">
        <a class="navbar-brand col-8 col-sm-6 col-md-4" href="#">
          <img src="img/logo-small.png" alt="" class="img-fluid">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
          <ul class="navbar-nav pull-right">
            <li class="nav-item">
              <a class="nav-link btn" href="#inicio">INICIO</a>
            </li>
            <li class="nav-item">
              <a class="nav-link btn" href="#habitaciones">HABITACIONES</a>
            </li>
            <li class="nav-item">
              <a class="nav-link btn" href="#restaurant">RESTAURANT</a>
            </li>
            <li class="nav-item">
              <a class="nav-link btn" href="#contacto">CONTACTO</a>
            </li>
            <li class="nav-item">
              <a class="nav-link btn" href="login.html">USUARIOS</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- Fin Navbar -->
    <!-- Imagen Inicio -->
    <div class="container-fluid p-0">
      <div id="startchange" class="parallax" data-parallax="scroll" data-image-src="img/slider-0.jpg">
        <div class="text-block">
          <h1><strong>Bienvenidos</strong></h1>
        </div>
      </div>
    </div>
    <!-- Fin Imagen Inicio -->
    <div class="container-fluid p-0">
      <div style="height: 30px; background: #f7eddc"></div>
    </div>
  </section>
  <!-- Fin Inicio -->
  <!-- Habitaciones -->
  <section id="habitaciones" class="hb">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <h2 class="text-center tthb">HABITACIONES</h2>
        </div>
        <div class="col-lg-4">
          <img src="img/oval.png" alt="" class="img-fluid imghb0">
          <h5 class="text-center">Habitaci&oacute;n Uno</h5>
          <p class="text-justify">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Illo, fugit. Aliquid delectus illo, est dolorem porro suscipit! Cumque nostrum quod veniam, natus facilis, perspiciatis ipsam error earum, ea odit voluptatibus.</p>
        </div>
        <div class="col-lg-4">
          <img src="img/oval2.png" alt="" class="img-fluid imghb1">
          <h5 class="text-center">Habitaci&oacute;n Dos</h5>
          <p class="text-justify">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ex ullam beatae autem, accusamus alias voluptate asperiores, rem officia maxime, nobis adipisci unde animi praesentium quo perspiciatis! Facere expedita, reprehenderit id!</p>
        </div>
        <div class="col-lg-4">
          <img src="img/oval3.png" alt="" class="img-fluid imghb2">
          <h5 class="text-center">Habitaci&oacute;n Tres</h5>
          <p class="text-justify">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quia corporis commodi quos dolore recusandae mollitia, earum perspiciatis eos facilis, id ab, maxime velit ducimus, aperiam optio. Minus, quod. Doloribus, eum.</p>
        </div>
      </div>
    </div>
  </section>
  <!-- Fin Habitaciones -->
  <div class="container-fluid p-0">
    <div style="height: 30px; background: #f7eddc"></div>
  </div>
  <!-- Img Testimonials-->
  <div class="container-fluid p-0">
    <div class="parallax2" data-parallax="scroll" 
    data-image-src="img/slider-1.png"></div>
    </div>

<div class="container">
    <div class="row">
      <div class="col-md-8 col-center m-auto">
        <h2>Testimonials</h2>
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
          <!-- Carousel indicators -->
          <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
          </ol>   
          <!-- Wrapper for carousel items -->
          <div class="carousel-inner">
            <div class="item carousel-item active">
              <div class="img-box"><img src="/examples/images/clients/1.jpg" alt=""></div>
              <p class="testimonial">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam eu sem tempor, varius quam at, luctus dui. Mauris magna metus, dapibus nec turpis vel, semper malesuada ante. Idac bibendum scelerisque non non purus. Suspendisse varius nibh non aliquet.</p>
              <p class="overview"><b>Paula Wilson</b>, Media Analyst</p>
            </div>
            <div class="item carousel-item">
              <div class="img-box"><img src="/examples/images/clients/2.jpg" alt=""></div>
              <p class="testimonial">Vestibulum quis quam ut magna consequat faucibus. Pellentesque eget nisi a mi suscipit tincidunt. Utmtc tempus dictum risus. Pellentesque viverra sagittis quam at mattis. Suspendisse potenti. Aliquam sit amet gravida nibh, facilisis gravida odio.</p>
              <p class="overview"><b>Antonio Moreno</b>, Web Developer</p>
            </div>
            <div class="item carousel-item">
              <div class="img-box"><img src="/examples/images/clients/3.jpg" alt=""></div>
              <p class="testimonial">Phasellus vitae suscipit justo. Mauris pharetra feugiat ante id lacinia. Etiam faucibus mauris id tempor egestas. Duis luctus turpis at accumsan tincidunt. Phasellus risus risus, volutpat vel tellus ac, tincidunt fringilla massa. Etiam hendrerit dolor eget rutrum.</p>
              <p class="overview"><b>Michael Holz</b>, Seo Analyst</p>
            </div>
          </div>
          <!-- Carousel controls -->
          <a class="carousel-control left carousel-control-prev" href="#myCarousel" data-slide="prev">
            <i class="fa fa-angle-left"></i>
          </a>
          <a class="carousel-control right carousel-control-next" href="#myCarousel" data-slide="next">
            <i class="fa fa-angle-right"></i>
          </a>
        </div>
      </div>
    </div>
  </div>
  <!-- Fin Img Testimonials-->
  <div class="container-fluid p-0">
    <div style="height: 30px; background: #f7eddc"></div>
  </div>
  <!-- Restaurant -->
  <section id="restaurant" class="rt">
    <div class="container">
      <div class="row">
        <div class="col-12">
          <h2 class="text-center tthb">RESTAURANT</h2>
        </div>
        <div class="col-md-8">
          <img src="img/plato1.jpg" width="500" alt="" class="img-fluid rounded">
        </div>
        <div class="col-md-4">
          <h3>Plato 1</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque impedit ipsa reprehenderit asperiores, facere temporibus, deleniti consectetur architecto aperiam placeat!</p>
        </div>
        <div class="col-12">
          <div style="height: 30px;"></div>
        </div>
        <div class="col-md-4">
          <h3>Plato 2</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque impedit ipsa reprehenderit asperiores, facere temporibus, deleniti consectetur architecto aperiam placeat!</p>
        </div>
        <div class="col-md-8">
          <img src="img/plato1.jpg" width="500" alt="" class="img-fluid rounded float-right">
        </div>
        <div class="col-12">
          <div style="height: 30px;"></div>
        </div>
        <div class="col-md-8">
          <img src="img/plato1.jpg" width="500" alt="" class="img-fluid rounded">
        </div>
        <div class="col-md-4">
          <h3>Plato 3</h3>
          <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Cumque impedit ipsa reprehenderit asperiores, facere temporibus, deleniti consectetur architecto aperiam placeat!</p>
        </div>
      </div>
    </div>
  </div>
</section>

<div class="container-fluid p-0">
  <div style="height: 30px; background: #f7eddc"></div>
</div>
<!-- Fin Restaurant -->
<!-- Contacto -->
<section id="contacto" class="ct">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <h2 class="text-center tthb">CONTACTO</h2>
      </div>
      <div class="col-md-7">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3329.075460935688!2d-70.65983528514168!3d-33.44734048077487!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9662c507f91be917%3A0xcfac72a68dd4b986!2sDuoc+Uc!5e0!3m2!1sen!2scl!4v1524849491040" width="100%" height="310" frameborder="0" style="border:0" allowfullscreen></iframe>
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
          <button class="btn btn-lg btn-primary btn-block btn-signin" id="envMje" name="btnCto" type="submit">Enviar</button>
        </form>
      </div>
    </div>
  </div>
</section>
<!-- Fin Contacto -->
<!-- Foot -->
<section class="foot">
  <div class="container-fluid p-0">
    <div style="height: 30px; background: #f7eddc"></div>
  </div>
  <div class="container">
    <div class="row">
      <div class="col text-center">
        <footer>
          <p>Copyright &reg; - Hostal Doña Clarita 2018</p>
        </footer>
      </div>
    </div>
  </div>
</section>
<!-- End Foot -->
<!-- Scripts -->
<script src="js/jquery-3.3.1.js"></script>
<script src="js/bs/popper.js"></script>
<script src="js/bs/bootstrap.js"></script>
<script src="js/parallax.js"></script>
<script src="js/scrollreveal.js"></script>
<script src="js/vl/jquery.validate.js" type="text/javascript"></script>
<script src="js/vl/jquery.Rut.js" type="text/javascript"></script>
<script src="js/functions.js"></script>
<script>
</script>
<!-- End Scripts -->
</body>
</html>
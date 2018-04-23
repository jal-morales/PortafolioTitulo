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
              <a class="nav-link btn" href="login.jsp">USUARIOS</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- Fin Navbar -->
    <!-- Imagen Inicio -->
    <div class="container-fluid p-0">
      <div id="startchange" class="parallax" data-parallax="scroll" data-image-src="img/slider-0.jpg">
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
  <!-- Restaurant -->
  <section id="restaurant">
    <div class="container-fluid p-0">
      <div style="height: 30px; background: #f7eddc"></div>
    </div>
    <div class="parallax2" data-parallax="scroll" data-image-src="img/slider-1.png">
    </div>
  </div>
  <div class="container-fluid p-0">
    <div style="height: 30px; background: #f7eddc"></div>
  </div>
</section>
<!-- Fin Restaurant -->
<!-- Contacto -->
<section id="contacto" class="ct">
  <div class="container">
    <div class="row">
      <div class="col-12">
        <h2 class="text-center tthb">CONTACTO</h2>
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
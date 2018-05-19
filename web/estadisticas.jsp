<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Estadísticas</title>
  <!-- Css -->
  <link rel="stylesheet" href="css/bs/bootstrap.css">
  <link rel="stylesheet" href="css/bs/bootstrap-grid.css">
  <link rel="stylesheet" href="css/style-app.css">
  <!-- End Css -->
  <link rel="icon" type="image/png" href="img/c-favicon.png">
</head>
<body>
  <!-- Inicio -->
  <section id="inicio">
    <!-- Navbar -->
    <div class="container">
      <nav class="navbar navbar-expand-lg navbar-light">
    <a class="navbar-brand" href="home.jsp">
          <img src="img/logo-n-small.png" width="250"></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
            <ul class="navbar-nav mr-5">
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Usuarios
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" href="clientes.jsp">Clientes</a>
                  <a class="dropdown-item" href="usuarios.jsp">Empleados</a>
                  <a class="dropdown-item" href="proveedores.jsp">Proveedores</a>
                </div>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="habitaciones.jsp">Habitaciones</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Servicios
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" href="serviciosComedor.jsp">Comedor</a>
                  <a class="dropdown-item" href="accesorios.jsp">Accesorios</a>
                </div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Reportes
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" href="reportes.jsp">Usuarios</a>
                  <a class="dropdown-item" href="estadisticas.jsp">Estadísticas</a>
                  <a class="dropdown-item" href="facturas.jsp">Facturas</a>
                </div>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="CerrarSession.jsp">Salir</a>
              </li>
              <li>
                <a class="btn btn-light ml-3" href="#" role="button">Ayuda</a>
              </li>
            </ul>
          </div>
        </nav>
      </div>
      <!-- Fin Navbar -->
    </section>
    <!-- Fin Inicio -->
    <!-- Contenido -->
  <section id="rep-a" class="mt-5">
    <div class="container">
     <form action="" method="post">
       <div class="form-group row justify-content-center">
        <label class="col-sm-2 col-form-label">Fecha Desde</label>
        <div class="col-12 col-sm-3">
          <input class="form-control" type="date">
        </div>
        <label class="col-sm-2 col-form-label">Fecha Hasta</label>
        <div class="col-12 col-sm-3">
          <input class="form-control" type="date">
        </div>
      </div>
      <hr>
      <div class="form-group row justify-content-center">
        <div class="col-12 col-sm-5 col-md-4 col-lg-3">
          <h5 for="" class="">Seleccione Filtros</h5>
        </div>
        <div id="filtros-cliente" class="col-12 col-sm-9 col-md-7 col-lg-5">
          <div class="form-check form-check-inline">
            <label class="form-check-label">
              <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1"> IP
            </label>
          </div>
          <div class="form-check form-check-inline">
            <label class="form-check-label">
              <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2"> Lugar
            </label>
          </div>
          <div class="form-check form-check-inline disabled">
            <label class="form-check-label">
              <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3"> Nro Visitas
            </label>
          </div>
          <div class="form-check form-check-inline disabled">
            <label class="form-check-label">
              <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3"> Cliente
            </label>
          </div>
        </div>
      </div>
      <hr>
      <div class="btns mb-4">
        <button type="submit" class="btn btn-light ml-3">Generar Informe</button>
         <button type="reset" class="btn btn-light ml-3">Limpiar</button>
      </div>
     
      <table class="table table-hover table-bordered">
        <thead>
          <tr>
            <th scope="col">IP</th>
            <th scope="col">Lugar</th>
            <th scope="col">Visitas</th>
            <th scope="col">Cliente</th>
            <th scope="col">Fecha</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
          </tr>
        </tbody>
      </table>
    </form> 
  </div>
</section>
<!-- Fin Contenido -->
      <!-- Scripts -->
      <script src="js/jquery-3.3.1.js"></script>
      <script src="js/bs/popper.js"></script>
      <script src="js/bs/bootstrap.js"></script>
      <script src="js/vl/jquery.validate.js" type="text/javascript"></script>
      <script src="js/vl/jquery.Rut.js" type="text/javascript"></script>
      <!-- End Scripts -->
    </body>
    </html>



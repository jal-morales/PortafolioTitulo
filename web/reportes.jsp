<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Reportes Uusario</title>
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
      <label class="col-sm-2 col-form-label">Tipo</label>
      <div class="col-sm-3">
        <select name="tipo" class="form-control">
          <option value="clientes">Seleccione</option>
          <option value="clientes">Clientes</option>
          <option value="empleados">Empleados</option>
          <option value="proveedores">Proveedores</option>
        </select>
      </div>
      <label class="col-sm-2 col-form-label">Formato</label>
      <div class="col-sm-3">
        <select name="tipo" class="form-control">
         <option value="clientes">Seleccione</option>
         <option value="pdf">PDF</option>
         <option value="xls">.xls</option>
         <option value="doc">.doc</option>
       </select>
     </div>
   </div>
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
    <div id="filtros-cliente" class="col-4 col-lg-3 ml-lg-5">
      <h5 for="" class="">Filtros Usuario</h5>
      <div class="form-check form-check">
        <label class="form-check-label">
          <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1"> Nombre
        </label>
      </div>
      <div class="form-check form-check">
        <label class="form-check-label">
          <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2"> Rut
        </label>
      </div>
      <div class="form-check form-check disabled">
        <label class="form-check-label">
          <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3"> Nombre Empresa
        </label>
      </div>
      <div class="form-check form-check disabled">
        <label class="form-check-label">
          <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3"> Giro Empresa
        </label>
      </div>
      <div class="form-check form-check disabled">
        <label class="form-check-label">
          <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3"> Dirección Empresa
        </label>
      </div>
    </div>
    <div id="filtros-cliente" class="col-4 col-lg-3 ml-lg-5">
      <h5 for="" class="">Filtros Empleado</h5>
      <div class="form-check form-check">
        <label class="form-check-label">
          <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1" disabled> Nombre
        </label>
      </div>
      <div class="form-check form-check">
        <label class="form-check-label">
          <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2"disabled> Rut
        </label>
      </div>
      <div class="form-check form-check disabled">
        <label class="form-check-label">
          <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3"disabled> Nombre Empresa
        </label>
      </div>
      <div class="form-check form-check disabled">
        <label class="form-check-label">
          <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3"disabled> Giro Empresa
        </label>
      </div>
      <div class="form-check form-check disabled">
        <label class="form-check-label">
          <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3"disabled> Dirección Empresa
        </label>
      </div>
    </div>
    <div id="filtros-cliente" class="col-4 col-lg-3 ml-lg-5">
      <h5 for="" class="">Filtros Proveedor</h5>
      <div class="form-check form-check">
        <label class="form-check-label">
          <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1" disabled> Nombre
        </label>
      </div>
      <div class="form-check form-check">
        <label class="form-check-label">
          <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2" disabled> Rut
        </label>
      </div>
      <div class="form-check form-check disabled">
        <label class="form-check-label">
          <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3" disabled> Nombre Empresa
        </label>
      </div>
      <div class="form-check form-check disabled">
        <label class="form-check-label">
          <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3" disabled> Giro Empresa
        </label>
      </div>
      <div class="form-check form-check disabled">
        <label class="form-check-label">
          <input class="form-check-input" type="checkbox" id="inlineCheckbox3" value="option3" disabled> Dirección Empresa
        </label>
      </div>
    </div>
  </div>
  <hr>
  <div class="btns">
    <button type="submit" class="btn btn-light ml-3">Generar Informe</button>
    <button type="reset" class="btn btn-light ml-3">Limpiar</button>
  </div>
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
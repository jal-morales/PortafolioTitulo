<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Facturas</title>
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
         <div class="form-group row">
          <label class="col-3 col-form-label">Ingrese Nº de Orden o Rut Cliente</label>
          <div class="col-4">
           <input type="text" class="form-control">
         </div>
         <div>
           <button class="btn-light">Buscar</button>
         </div>
       </div>
       <table class="table table-hover table-bordered">
        <thead>
          <tr>
            <th scope="col">Rut Emp</th>
            <th scope="col">Cliente</th>
            <th scope="col">Fecha</th>
            <th scope="col">Total</th>
            <th scope="col">Seleccione</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <td></td>
            <td></td>
            <td></td>
            <td></td>
            <td><input class="" type="radio" name="" id="" value="option1"></td> 
          </tr>
        </tbody>
      </table>
      <div class="btns">
       <a class="btn btn-light ml-3" href="nuevo-usuario.html" role="button">Nuevo Accesorio</a>
       <a class="btn btn-light ml-3" href="home.html" role="button">Volver</a>
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



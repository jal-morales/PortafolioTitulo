<%-- 
    Document   : home
    Created on : 18-abr-2018, 18:09:04
    Author     : JavierL.M
--%>
<%
 String usuario=(String)session.getAttribute("txtUsuario");

           String empresa=(String)session.getAttribute("txtCodEmpresa");
            int codEmpresa=Integer.parseInt(empresa);
          
       if (usuario==null && codEmpresa==0 ) 
        {
        RequestDispatcher dispatcher;    
        dispatcher = request.getRequestDispatcher("/index.jsp"); 
        dispatcher.forward(request, response); 
     
        } 

%>
 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <!-- Css -->
  <link rel="stylesheet" href="css/bs/bootstrap.css">
  <link rel="stylesheet" href="css/bs/bootstrap-grid.css">
  <link rel="stylesheet" href="css/style-app.css">
  <!-- End Css -->
  <title>Bienvenido</title>
</head>
<body>
  <!-- Inicio -->
  <section id="inicio">
    <!-- Navbar -->
    <div class="container">
      <nav class="navbar navbar-expand-lg navbar-light">
        <a class="navbar-brand" href="#">
          <img src="img/logo-n-small.png" width="250" alt="logo"></a>
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
                  <a class="dropdown-item" href="usuarios.jsp">Clientes</a>
                  <a class="dropdown-item" href="usuarios.jsp">Empleados</a>
                  <a class="dropdown-item" href="usuarios.jsp">Administradores</a>
                </div>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="#">Habitaciones</a>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Servicios
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" href="#">Comedor</a>
                  <a class="dropdown-item" href="#">Accesorios</a>
                </div>
              </li>
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  Reportes
                </a>
                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <a class="dropdown-item" href="#">Estadísticas</a>
                  <a class="dropdown-item" href="#">Facturas</a>
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
    <section id="welc-cont">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-12 col-sm-auto col-md-8 col-lg-6">
            <div class="welc-box">
              <h1>Bienvenido: <%=usuario%></h1>
              <hr>
              <div class="u-opc">
                <ul>
                  <li><a href="#">Modificar Contraseña</a></li>
                  <li><a href="#">Editar Perfil</a></li>
                  <li><a href="#">Cambiar Imagen</a></li>
                </ul>
              </div>
              <div class="u-img">
                <img class="img-fluid" src="img/user.jpg" alt="">
              </div>
            </div>
          </div>
        </div>
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

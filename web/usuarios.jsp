<%-- 
    Document   : usuarios
    Created on : 29-abr-2018, 13:38:03
    Author     : JavierL.M
--%>
<%@page import="Modelo.Login"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Controladores.ControladorLogin"%>
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

        
        ControladorLogin ctrlog= new ControladorLogin();
        ArrayList<Login> listaUser=ctrlog.ListaUsuarios(codEmpresa);

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Usuarios</title>
  <!-- Css -->
  <link rel="stylesheet" href="css/bs/bootstrap.css">
  <link rel="stylesheet" href="css/bs/bootstrap-grid.css">
  <link rel="stylesheet" href="css/style-app.css">
  <!-- End Css -->
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
                  <a class="dropdown-item" href="usuarios.html">Clientes</a>
                  <a class="dropdown-item" href="usuarios.html">Empleados</a>
                  <a class="dropdown-item" href="usuarios.html">Administradores</a>
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
                <a class="nav-link" href="#">Salir</a>
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
    <section id="mant-u">
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="mant-box">
              <h1>Listado de usuarios</h1>
              <table class="table table-hover table-bordered">
                <thead>
                  <tr>
                    <th scope="col">Nombre</th>
                    <th scope="col">Usuario</th>
                    <th scope="col">TipoUsuario</th>
                    <th scope="col">Acciones</th>
                  </tr>
                </thead>
                <tbody>
                 <% for(Login lg:listaUser)
                 {
                  %>
                  <td><%=lg.getNombre()%></td>
                  <td><%=lg.getUsuaroio()%></td>
                  <td><%=lg.getTipo_usuario()%></td>
                  <td><button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#ed">Editar</button>
                    <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#el">Eliminar</button></td>   
                    <%}%>   
                  </tbody>
                </table>
                <div class="btns">
                 <a class="btn btn-light ml-3" href="nuevo-usuario.jsp" role="button">Nuevo Usuario</a>
                 <a class="btn btn-light ml-3" href="home.jsp" role="button">Volver</a>
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

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
  
  <!-- End Css -->
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Codigo Empresa:<%=codEmpresa%></h1><br>
        <h1>Usuaruio: <%=usuario%></h1>
        <h1>Vienbenido a la intranet</h1>
        
        
        <!-- Inicio -->
  <section id="home">
    <!-- Navbar -->
    <nav class="active">
      <div class="container-fluid">
        <a class="navbar-brand col-8 col-sm-6 col-md-4" href="#">
          <img src="img/logo-small.png" alt="" class="img-fluid">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse " id="">
          <ul class="navbar-nav pull-right">
            <li class="nav-item">
              <a class="nav-link btn" href="usuarios.jsp">Listado </a>
            <lu>
                Empleados
            </lu>
            
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
            <li class="nav-item">
              <a class="nav-link btn" href="CerrarSession.jsp">CERRAR SESION</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    </body>
    
</html>

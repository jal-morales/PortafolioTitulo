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
    </head>
    <body>
        <h1><%=codEmpresa%></h1>
        <h1>Listado de usuarios en el sistema.</h1>
        <h2>Realizar modal para estas acciones Modificar Eliminar</h2>
        
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
        <table>
            <thead>
                <tr>
                    <td>Nombre</td>
                    <td>Usuario</td>
                    <td>TipoUsuario</td>
                    <td>Acciones</td>
                    
                </tr>
            </thead>
           
            <tbody>
             <% for(Login lg:listaUser)
            {
            %>
            <td><%=lg.getNombre()%></td>
            <td><%=lg.getUsuaroio()%></td>
            <td><%=lg.getTipo_usuario()%></td>
            <td>AgregarBoton Boostrap para levantar modal para accion modificar eliminar</td>  
            <%}%>   
            </tbody>
            
        </table>
    </body>
    
</html>

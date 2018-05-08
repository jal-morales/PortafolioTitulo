<%-- 
    Document   : usuarios
    Created on : 29-abr-2018, 13:38:03
    Author     : JavierL.M
--%>
<%@page import="Modelo.EmpleadosDC"%>
<%@page import="Controladores.ControladorEmpleados"%>
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

        
        ControladorEmpleados ctrem= new ControladorEmpleados();
        ArrayList<EmpleadosDC> listaEmpleados=ctrem.EmpleadosListar(codEmpresa);
        

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
  
  <!-- Inicis JS -->
  <script src="js/jquery-3.3.1.js"></script>
  <script src="js/DataModal.js"></script>
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
    <section id="mant-u">
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="mant-box">
              <h1>Listado de usuarios empresa</h1>
              <table class="table table-hover table-bordered">
                <thead>
                  <tr>
                    <th scope="col">Nombre</th>
                    <th scope="col">Usuario</th>
                    <th scope="col">TipoUsuario</th>
                     <th scope="col">Rut</th>
                    <th scope="col">Acciones</th>
                  </tr>
                </thead>
                <tbody>
                 <% for(EmpleadosDC lg:listaEmpleados)
                 { 
                  %>
                  <td><%=lg.getNombres()%> <%=lg.getApellidos()%></td>
                  <td> <%=lg.getUsuario()%></td>
                  <td><%=lg.getCargo()%></td>
                   <td><%=lg.getRut()%></td>
                   <td><button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#EditarUsuarioEmpresa" onclick="DataEmpleadoMDLEdicion(<%=lg.getIdEmpleadosDC()%>,'<%=lg.getNombres()%>','<%=lg.getApellidos()%>','<%=lg.getCargo()%>','<%=lg.getRut()%>')">Editar</button>
                    <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#EliminarUsuarioEmpresa">Eliminar</button></td>   
                     
                  </tbody>
                  <%}%>  
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
                  
                  
    <!-- Model de Edicion. -->
<div class="modal fade" id="EditarUsuarioEmpresa" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="exampleModalLongTitle">Modificar Empleado</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          
          <form name="frmEditarEmpleador" method="post" action="EmpleadoServlet">              
  <table  class="table table-hover table table-condensed table table ">
               
                <tr> 
                <td>
                    <div class="form-group row">
                        <label for="example-text-input" class="col-2 col-form-label">Nombres</label>
                        <div class="col-10">
                            <input class="form-control " type="text" value="" name="NombreEmpleado"  id="NombreEmpleado"required="">
                             <input class="form-control " type="text" value="" name="idEmpleado"  id="idEmpleado"required="">
                            
                        </div>
                    </div>
                </td>
                
                     
           </tr>
           <tr> 
                <td>
                    <div class="form-group row">
                        <label for="example-text-input" class="col-2 col-form-label">Apellidos</label>
                        <div class="col-10">
                            <input class="form-control " type="text" value="" name="ApellidosEmpleado" id="ApellidosEmpleado" required="">
    
                        </div>
                    </div>
                </td>
              
           </tr>
           <tr> 
                <td>
                    <div class="form-group row">
                        <label for="example-text-input" class="col-2 col-form-label">Rut</label>
                        <div class="col-10">
                            <input class="form-control " type="text" value="" name="rutEmpleado" id="rutEmpleado" required="">
    
                        </div>
                    </div>
                </td>
              
           </tr>
           <tr> 
                <td>
                    <div class="form-group row">
                        <label for="example-text-input" class="col-2 col-form-label">Cargo</label>
                        <div class="col-10">
                            <input class="form-control " type="text" value="" name="TipoUsuarioEmpleado" id="TipoUsuarioEmpleado" required="">
    
                        </div>
                    </div>
                </td>
              
           </tr>
            <tr> 
           </tr>

            
 </table>
 <input type="submit" name="ModificarEmpleador" value="Modificar" class="btn btn-warning">
                        
                    
                    </form>        
      </div>

    </div>
  </div>
                        
</div>
 <!-- Fin Modal --> 
 
 <!-- Inicio  Modal 2--> 
 <div class="modal fade" id="EliminarUsuarioEmpresa" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="exampleModalLongTitle">Eliminar Empleado</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          
          <form name="frmEditarEmpleador" method="post" action="">              
  <table  class="table table-hover table table-condensed table table ">
               
                <tr> 
                <td>
                    <div class="form-group row">
                        <label for="example-text-input" class="col-2 col-form-label">Nombres</label>
                        <div class="col-10">
                            <input class="form-control disabled" type="text" value="" name="NombreEmpleado"  id="NombreEmpleado"required="">
                             <input class="form-control disabled" type="text" value="" name="idEmpleado"  id="idEmpleado"required="">
                        </div>
                    </div>
                </td>
                
                     
           </tr>
           <tr> 
                <td>
                    <div class="form-group row">
                        <label for="example-text-input" class="col-2 col-form-label">Apellidos</label>
                        <div class="col-10">
                            <input class="form-control disabled" type="text" value="" name="ApellidosEmpleado" id="ApellidosEmpleado" required="">
    
                        </div>
                    </div>
                </td>
              
           </tr>
           <tr> 
                <td>
                    <div class="form-group row">
                        <label for="example-text-input" class="col-2 col-form-label">Rut</label>
                        <div class="col-10">
                            <input class="form-control disabled" type="text" value="" name="rutEmpleado" id="rutEmpleado" required="">
    
                        </div>
                    </div>
                </td>
              
           </tr>
           <tr> 
                <td>
                    <div class="form-group row">
                        <label for="example-text-input" class="col-2 col-form-label">Cargo</label>
                        <div class="col-10">
                            <input class="form-control disabled" type="text" value="" name="TipoUsuarioEmpleado" id="TipoUsuarioEmpleado" required="">
    
                        </div>
                    </div>
                </td>
              
           </tr>
            <tr> 
                <td>
                    <div class="form-group row">
                        <label for="example-text-input" class="col-2 col-form-label">Tipo Usuario</label>
                        <div class="col-10">
                            <input class="form-control disabled" type="text" value="" name="QuienRetiraEncomienda" required="">
    
                        </div>
                    </div>
                </td>
              
           </tr>

            
 </table>
 <input type="submit" name="Entregar_Encomienda" value="Entregar Encomienda" class="btn btn-warning">
                        
                    
                    </form>        
      </div>

    </div>
  </div>
                        
</div> 
 <!-- Fin Modal 2 -->
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

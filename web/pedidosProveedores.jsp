<%-- 
    Document   : usuarios
    Created on : 29-abr-2018, 13:38:03
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
  <title>Empleados</title>
  <!-- Css -->
  <link rel="stylesheet" href="css/bs/bootstrap.css">
  <link rel="stylesheet" href="css/bs/bootstrap-grid.css">
  <link rel="stylesheet" href="css/style-app.css">
  <!-- End Css -->
   <link rel="icon" type="image/png" href="img/c-favicon.png">
  
  <!-- Inicis JS -->
  <script src="js/jquery-3.3.1.js"></script>
  <script src="js/DataModal.js"></script>
  
  
  
   <!-- Librerias Alertify--> 
   <link rel="stylesheet" type="text/css" href="Alertify/css/alertify.css">
   <link rel="stylesheet" type="text/css" href="Alertify/css/themes/default.css">
   <script src="Alertify/alertify.min.js"></script> 
 
</head>
<body>
    <!--Mensaje De alerta satifactorio-->
   
    <%
      
       String msg = (String)session.getAttribute("mensaje");
       if (msg!=null) 
       {%>
                   
     <button type="button" class="close" data-dismiss="alert">&times;</button>
           <script>
             
              alertify.set('notifier','position', 'top-right');
              alertify.success('<%=msg%>');
 
          </script>            
      <%
       
     session.setAttribute("mensaje",null);
 }%>
      
  <!--Mensaje De alerta Error-->
      <%
       
       String msgErr = (String)session.getAttribute("mensajeError");
     
       if (msgErr!=null) 
       {%>
                   
         <script>
             
              alertify.set('notifier','position', 'top-right');
              alertify.error('<%=msgErr%>');
               
             
          </script>        
      <% 
      
      session.setAttribute("mensajeError",null); 
 }%>       
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
    <section id="mant-u">
      <div class="container">
        <div class="row">
          <div class="col">
            <div class="mant-box">
              <h1>Listado de Ordenes de compra</h1>
              <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#AgregarUsuarioEmpresa" onclick="">Agregar</button><br>
              <table class="table table-hover table-bordered" id="TablaUsserEmpleados">
                <thead>
                  <tr>
                    <td scope="col">Numero OC</td>
                    <td scope="col">Fecha Orden</td>
                    <td scope="col">Usuario Emisor</td>
                     <td scope="col">Nombre Proveedor</td>
                    <td scope="col">Rut</td>
                  </tr>
                </thead>
                <tbody>
                 
                  <td></td>
                  <td> </td>
                  <td></td>
                   <td></td>
                   <td><button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#EditarUsuarioEmpresa" >Editar</button>
                       <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#EliminarUsuarioEmpresa" >Eliminar</button></td>   
                     
                  </tbody>
                 
                </table>
                <div class="btns">
                 
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
                            <input class="form-control " type="text" value="" name="idEmpleado"  id="idEmpleado" hidden="">
                            
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
                             <select class="form-control" required="" name="TipoUsuarioEmpleado" id="TipoUsuarioEmpleado">
                                <option value="">Seleccione</option>
                                <option value="Administrador">Administrador</option>
                                 <option value="Recepcionista">Recepcionista</option>
                            </select>
                            
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
 
 <!-- Inicio  Modal Eliminacion--> 
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
          
          <form name="frmEditarEmpleador" method="post" action="EmpleadoServlet">              
  <table  class="table table-hover table table-condensed table table ">
    
                <tr> 
                <td>
                    <div class="form-group row">
                        <input class="form-control " type="text" value="" name="idEeliminar" id="idEeliminar" hidden="">
                        <input class="form-control " type="text" value="" name="NombreEeliminar" id="NombreEeliminar" readonly="">
                        <input class="form-control " type="text" value="" name="ApellidoEeliminar" id="ApellidoEeliminar" readonly="">
                        
                    </div>
                </td>
                
                     
           </tr>
     
 </table>
 <input type="submit" name="EliminarEmpleado" value="Eliminar Empleado" class="btn btn-warning">
                        
                    
                    </form>        
      </div>

    </div>
  </div>
                        
</div> 
 <!-- Fin Modal Eliminar -->
 
<!-- Modal Agregar  -->
<div class="modal fade" id="AgregarUsuarioEmpresa" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="exampleModalLongTitle">Agregar Empleado</h4>
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
                            <input class="form-control " type="text" value="" name="ANombreEmpleado"  id="NombreEmpleado"required="">
                            <input  type="text" value="<%=codEmpresa%>" name="AcodEmpresa"  id="CodEmpresa" hidden="">
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
                            <input class="form-control " type="text" value="" name="ArutEmpleado" id="ArutEmpleado" required="">
    
                        </div>
                    </div>
                </td>
              
           </tr>
           <tr> 
                <td>
                    <div class="form-group row">
                        <label for="example-text-input" class="col-2 col-form-label">Cargo</label>
                        <div class="col-10">
                            <select class="form-control" required="" name="ATipoCargo">
                                <option value="">Seleccione</option>
                                <option value="Administrador">Administrador</option>
                                 <option value="Recepcionista">Recepcionista</option>
                            </select>
                            
    
                        </div>
                    </div>
                </td>
              
           </tr>
            <tr> 
                <td>
                    <div class="form-group row">
                        <label for="example-text-input" class="col-2 col-form-label">usuario</label>
                        <div class="col-10">
                            <input class="form-control " type="text" value="" name="ATipoUsuarioEmpleado" id="TipoUsuarioEmpleado" required="">
    
                        </div>
                    </div>
                </td>
              
           </tr>
            <tr> 
           </tr>

            
 </table>
 <input type="submit" name="AgregarEmpleado" value="Agregar" class="btn btn-warning">
                        
                    
                    </form>        
      </div>

    </div>
  </div>
                        
</div>
 <!-- Fin Modal Agregar -->  
 
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

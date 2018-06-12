<%@page import="Modelo.AccesorioHabitacion"%>
<%@page import="Modelo.Habitacion"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Controladores.ControladorHabitaciones"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String usuario=(String)session.getAttribute("txtUsuario");

           String empresa=(String)session.getAttribute("txtCodEmpresa");
            int codEmpresa=Integer.parseInt(empresa);
            String tipoUser=(String)session.getAttribute("tipoUsserP");
          
       if (usuario==null && codEmpresa==0 ) 
        {
        RequestDispatcher dispatcher;    
        dispatcher = request.getRequestDispatcher("/index.jsp"); 
        dispatcher.forward(request, response); 
     
        } 

        
        ControladorHabitaciones ctrH= new ControladorHabitaciones();
        ArrayList<Habitacion> listaH= ctrH.HabitacionListar(codEmpresa);
        
        

        

%>
<!DOCTYPE html>

<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Habitaciones</title>
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
                  <% if (tipoUser.equals("Administrador")) 
                  {
 
                  %>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="clientes.jsp">Clientes</a>
                    <a class="dropdown-item" href="usuarios.jsp">Empleados</a>
                    <a class="dropdown-item" href="proveedores.jsp">Proveedores</a>
                  </div>
                  <%}%>
                </li>
                
                <% if (tipoUser.equals("Administrador")) 
                {
                %>
                <li class="nav-item">
                  <a class="nav-link" href="habitaciones.jsp">Habitaciones</a>
                </li>
                
                <%}%>
                
                <% if (tipoUser.equals("Administrador")) {
                        
                   
                %>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Servicios
                  </a>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="serviciosComedor.jsp">Comedor</a>
                    <a class="dropdown-item" href="accesorios.jsp">Accesorios</a>
                  </div>
                </li>
                <% }%>
                
                <%if (tipoUser.equals("Administrador")) 
                {
                        
                   
                %>
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
                <% }%>
                
                 <%if (tipoUser.equals("Cliente")) 
                {
                        
                   
                %>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    App
                  </a>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="#">Pedidos</a>
                    <a class="dropdown-item" href="#">Carga Trabajadores</a>
                    <a class="dropdown-item" href="#">Facturas</a>
                  </div>
                </li>
                
                <%}%>
                
                <% if (tipoUser.equals("Proveedor")) {
                        
                   
                %>
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Proveedores
                  </a>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="verOrdenPedidoProveedor.jsp">Pedidos</a> 
                  </div>
                </li>
                <%}%>
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
              <h1>Habitaciones</h1>
              <table class="table table-hover table-bordered">
                <thead>
                  <tr>
                    <th scope="col">Nº</th>
                    <th scope="col">Piso</th>
                    <th scope="col">Tipo</th>
                    <th scope="col">Disponibilidad</th>
                    <th scope="col">Precio</th>
                    <th scope="col">Acciones</th>
                  </tr>
                </thead>
                 <%
                     for(Habitacion h:listaH)
                     {
                 %>
                    <tbody>
                        
                  <td><%=h.getNumHabitacion()%></td>
                  <td><%=h.getPsoHabitacion()%></td>
                  <td><%=h.getTipohabitacion()%></td>
                  <td><%=h.getEstado()%></td>
                  <td>$<%=h.getPrecio()%></td>
                 
                  <td>
                      <button type="button" class="btn btn-outline-danger btn-sm" data-toggle="modal" data-target="#Eliminarhabitacion" onclick="EliminarH(<%=h.getIdHabitacion()%>,'<%=h.getNumHabitacion()%>',<%=h.getPsoHabitacion()%>,'<%=h.getTipohabitacion()%>')" >Eliminar</button>
                      <button type="button" class="btn btn-outline-warning btn-sm" data-toggle="modal" data-target="#ed">Modificar</button>
                      <button type="button" class="btn btn-outline-info btn-sm" data-toggle="modal" data-target="#ed">Reservar</button>
                      <button type="button" class="btn btn-outline-info btn-sm" data-toggle="modal" data-target="#VerAccesorios">Accesorios</button>
                    </td>   
                 
                  </tbody>
                  <%}%>
                </table>
                <div class="btns">
                  
                  <a class="btn btn-light ml-3" href="home.jsp" role="button">Volver</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </section>
      <!-- Fin Contenido -->
      
      <!-- Inicio  Modal Eliminacion--> 
 <div class="modal fade" id="Eliminarhabitacion" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="exampleModalLongTitle">Eliminar Habitacion</h4>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
          
          <form name="frmEditarhabitacion" method="post" action="HabitacionesServlet">              
  <table  class="table table-hover table table-condensed table table ">
    
                <tr> 
                <td>
                    <div class="form-group row">
                        <input class="form-control " type="text" value="" name="idHabitacion" id="idHabitacion" hidden="" >
                        Habitacion:<input class="form-control " type="text" value="" name="NumeroHabitacion" id="NumeroHabitacion" readonly="">
                        Piso:<input class="form-control " type="text" value="" name="ApellidoEeliminar" id="PisoHabiracion" readonly="">
                        Tipo Habitacion:<input class="form-control " type="text" value="" name="tipoHabitacion" id="tipoHabitacion" readonly="">
                    </div>
                </td>
                
                     
           </tr>
     
 </table>
 <input type="submit" name="EliminarH" value="Eliminar Habitacion" class="btn btn-warning">
                        
                    
                    </form>        
      </div>

    </div>
  </div>
                        
</div> 
      
      <!-- Model de Edicion. -->
         <div class="modal fade" id="VerAccesorios" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" id="exampleModalLongTitle">Detalle Accesorios</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                              
                  <table class="table table-hover table-bordered" id="TablaUsserEmpleados">
                <thead>
                  <tr>
                    <td scope="col">Nombre</td>
                    <td scope="col">Cantidad</td>
                  </tr>
                </thead>
                <%
                
                for(Habitacion h:listaH)
                { 
                    
                    ArrayList<AccesorioHabitacion> listaA=ctrH.AccesoriosListar(h.getIdHabitacion());
                  
                   for(AccesorioHabitacion d:listaA)
                   {
                   
                %>
                
                 
                <tbody>
               
                  <td><%=d.getNombre()%></td>
                  <td><%=d.getCantidad()%></td>
                 </tbody>
               <%}}%>
                
               </table>
                       
            </div>
          </div>
        </div>
      </div>
      <!-- Fin Modal --> 
    <!-- Scripts -->
    <script src="js/jquery-3.3.1.js"></script>
    <script src="js/bs/popper.js"></script>
    <script src="js/bs/bootstrap.js"></script>
    <script src="js/vl/jquery.validate.js" type="text/javascript"></script>
    <script src="js/vl/jquery.Rut.js" type="text/javascript"></script>
    <!-- End Scripts -->
  </body>
  </html>
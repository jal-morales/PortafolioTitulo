    <%@page import="Modelo.DetallePedido"%>
<%@page import="Modelo.OrdenDePedido"%>
<%@page import="Controladores.ControladorOrdenDePedido"%>
<%@page import="Modelo.Proveedores"%>
    <%@page import="Controladores.ControladorProveedores"%>
    <%@page import="java.util.ArrayList"%>
    <%
    String usuario=(String)session.getAttribute("txtUsuario");
    String empresa=(String)session.getAttribute("txtCodEmpresa");
    String tipoUser=(String)session.getAttribute("tipoUsserP");
    int codEmpresa=Integer.parseInt(empresa);
    
    if (usuario==null && codEmpresa==0 ) 
      {
        RequestDispatcher dispatcher;    
        dispatcher = request.getRequestDispatcher("/index.jsp"); 
        dispatcher.forward(request, response); 
      } 
    // se rescata variable para filtro de pedidos solicitados.
    
      ControladorOrdenDePedido ctrOC= new ControladorOrdenDePedido();
      ArrayList<OrdenDePedido> listaPP=ctrOC.ListarOrdenPedidoViewProveedor(codEmpresa, usuario);

      
        
     
      
 

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
                <li>
                    <span style="color: #dc3545;"><h5>Bienvenido <%=usuario%></h5></span>
                </li>
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
                
                 <%if (tipoUser.equals("Administrador")) 
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
                <li class="nav-item dropdown">
                  <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Proveedores
                  </a>
                  <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                    <a class="dropdown-item" href="verOrdenPedidoProveedor.jsp">Pedidos</a> 
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
          <!-- Fin Navbar -->
        </section>
        <!-- Fin Inicio -->
        <!-- Contenido -->
        <section id="mant-u">
          <div class="container">
            <div class="row">
              <div class="col">
                <div class="mant-box">
                  <h1>Listado de pedidos solicitados</h1>
                  <table class="table table-hover table-bordered" id="TablaUsserEmpleados">
                    <thead>
                      <tr>
                        <td scope="col">Nombre</td>
                        <td scope="col">Rut</td>
                        <td scope="col">Fecha Orden</td>
                        <td scope="col">Numero Pedido</td>
                        <td scope="col">Solicitado por</td>
                        <td scope="col">Acciones</td>
                      </tr>
                    </thead>
                    <tbody>
                     <% for(OrdenDePedido lg:listaPP)
                     { 
                      %>
                      <td><%=lg.getNombreProveedor()%></td>
                      <td> <%=lg.getRutProveedor()%></td>
                      <td><%=lg.getFecha_orden()%></td>
                      <td><%=lg.getNumero_pedido()%></td>
                      <td><%=lg.getNomUsser()%></td>
                      <td><button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#VerDetallePedido">Ver detalle pedidos</button></td>   
                     </tbody>
                     
                     <%}%>  
                   </table>
                   <div class="btns">
                     <a class="btn btn-light ml-3" href="proveedores.jsp" role="button">Volver</a>
                   </div>
                 </div>
               </div>
             </div>
           </div>
         </section>
         <!-- Model de Edicion. -->
         <div class="modal fade" id="VerDetallePedido" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h4 class="modal-title" id="exampleModalLongTitle">Detalle Pedido</h4>
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
                    <td scope="col">Valor Unitario</td>
                    <td scope="col">Total </td>
                   
                  </tr>
                </thead>
                
                <%
                
                for(OrdenDePedido op:listaPP)
                { 
            
                   ArrayList<DetallePedido> listaDPedido=ctrOC.detalleDePedido(op.getNumero_pedido());
                   for(DetallePedido d:listaDPedido)
                   {
                   
                %>
                
                 
                <tbody>
               
                  <td><%=d.getDescripcion()%></td>
                  <td><%=d.getCantidad()%></td>
                  <td>$<%=d.getValor()%></td>
                  <td>$<%=d.getValoraPagar()%></td>
                     
                 </tbody>
               <%}}%>
          
                
               </table>
                       
            </div>
          </div>
        </div>
      </div>
      <!-- Fin Modal --> 
      
      
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
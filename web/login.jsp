<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Acceso Usuarios</title>
    <!-- Css -->
    <link rel="stylesheet" href="css/bs/bootstrap.css">
    <link rel="stylesheet" href="css/bs/bootstrap-grid.css">
    <link rel="stylesheet" href="css/style.css">
    <!-- End Css -->
</head>
<body>
<section class="head-user">
    <div class="container-fluid">
        <div class="row"></div>
        <div class="col align-self-center">
        <a href="index.jsp"><img src="img/logo-n-small.png" alt="" class="img-fluid"></a>
        </div>
      </div>
    </nav>
    </div>
</section>
    <section class="login-form">
        <div class="container">
            <div class="row justify-content-md-center">
                <div class="col-12 col-md-6 col-lg-4">
                    <form action="./UsserServlet" method="post" name="FormEntrar">
                        <div class="input-group input-group-lg">
                            <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-home"></i></span>
                            <input type="text" class="form-control" name="txtCodEmpresa" placeholder="Cod Empresa" id="Correo" aria-describedby="sizing-addon1" required >
                        </div>
                        <br>
                        <div class="input-group input-group-lg">
                            <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-envelope"></i></span>
                            <input type="text" class="form-control" name="txtUsuario" placeholder="Correo" id="Correo" aria-describedby="sizing-addon1"autocomplete="off" >
                        </div>
                        <br>
                        <div class="input-group input-group-lg">
                            <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-lock"></i></span>
                            <input type="password" name="txtpassword" class="form-control" placeholder="******" aria-describedby="sizing-addon1"autocomplete="off" >
                        </div>
                        <br>
                        <button class="btn btn-lg btn-primary btn-block btn-signin" id="IngresoLog" name="btnLogin" type="submit">Entrar</button><br>
                        <div class="opcioncontra text-center"><a href="olvidasteContrasena.jsp">Olvidaste tu contraseña?</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>  
    </section>
    <!-- Scripts -->
    <script src="js/build/jquery-3.3.1.js"></script>
    <script src="js/build/popper.js"></script>
    <script src="js/build/bootstrap.js"></script>
    <script src="js/build/jquery.validate.js" type="text/javascript"></script>
    <script src="js/build/jquery.Rut.js" type="text/javascript"></script>
    <script src="js/functions.js"></script>
    <!-- End Scripts -->
</body>
</html>

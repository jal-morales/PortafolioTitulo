<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Acceso Usuarios</title>
    <!-- Css -->
    <link rel="stylesheet" href="css/bs/bootstrap.css">
    <link rel="stylesheet" href="css/bs/bootstrap-grid.css">
    <link rel="stylesheet" href="css/style-app.css">
    <!-- End Css -->
</head>
<body>
    <section id="hd">
        <div class="container">
            <div class="row">
                <div class="col align-content-start">
                    <a href="index.jsp"><img src="img/logo-n-small.png" alt="" class="img-fluid"></a>
                </div>
            </div>
        </div>
    </section>
    <section id="log">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-10 col-sm-8 col-md-6 col-lg-5 col-xl-4 ">
                    <form action="./UsuariosServlet" method="post" name="FormEntrar">
                        <div class="form-group">
                            <input type="text" class="form-control" name="txtCodEmpresa" placeholder="Cod Empresa" id="codEmp" required>
                        </div>
                        <div class="form-group">
                            <input type="email" class="form-control" name="txtEmail" placeholder="Correo" id="email" required >
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" name="txtPass" placeholder="******" id="pass" required>
                        </div>
                        <button class="btn btn-lg btn-primary btn-block btn-signin" id="IngresoLog" name="btnLogin" type="submit">Entrar</button>
                        <div class="opcioncontra text-center"><a href="olvidasteContrasena.jsp">Olvidaste tu contraseña?</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>  
    </section>
    <!-- Scripts -->
    <script src="js/jquery-3.3.1.js"></script>
    <script src="js/bs/popper.js"></script>
    <script src="js/bs/bootstrap.js"></script>
    <script src="js/tp/slider-revolution.js"></script>
    <script src="js/tp/tools.min.js"></script>
    <script src="js/vl/jquery.validate.js" type="text/javascript"></script>
    <script src="js/vl/jquery.Rut.js" type="text/javascript"></script>
    <script src="js/functions.js"></script>
    <!-- End Scripts -->
</body>
</html>

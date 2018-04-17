<%-- 
    Document   : index
    Created on : 10-abr-2018, 11:54:05
    Author     : JavierL.M
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>

    <legend style="color: red;">Doña Clarita <br>	 

                <div class="ContentForm">
                  
                    <form action="./UsserServlet" method="post" name="FormEntrar">
                        <div class="input-group input-group-lg">
                            <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-home"></i></span>
                            <input type="text" class="form-control" name="txtCodEmpresa" placeholder="1" id="Correo" aria-describedby="sizing-addon1" required >
                        </div>
                        <br>
                        <div class="input-group input-group-lg">
                            <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-envelope"></i></span>
                            <input type="text" class="form-control" name="txtUsuario" placeholder="Admin" id="Correo" aria-describedby="sizing-addon1"autocomplete="off" >
                        </div>
                        <br>
                        <div class="input-group input-group-lg">
                            <span class="input-group-addon" id="sizing-addon1"><i class="glyphicon glyphicon-lock"></i></span>
                            <input type="password" name="txtpassword" class="form-control" placeholder="******" aria-describedby="sizing-addon1"autocomplete="off" >
                            
                        </div>
                        <br>
                        <button class="btn btn-lg btn-primary btn-block btn-signin" id="IngresoLog" name="btnLogin" type="submit">Entrar</button>
                        <div class="opcioncontra"><a href="#">Olvidaste tu contraseña?</a>

                        </div>
                    </form>
                </div>	
            </legend>
    </head>
    <body>
        
    </body>
</html>

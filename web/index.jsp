<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <title>Login</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="extraSources/bootstrap.min.css">
        <link rel="stylesheet" href="extraSources/mainStyles.css">
        <style>
            .container{
                padding-left: 18%;
                padding-right: 18%;
            }
        </style>
    </head>
    <body style="font-size: large">
        <header>
            <div class="container" style="padding-top: 50px">
                <h1 style="text-align: center" class="col-xs-12">Inicio de Sesión
                    <small class="col-xs-12">Introduzca sus datos</small>
                </h1>
            </div>
        </header>
        <section>
            <div class="container" style="padding-top: 50px">
                <form action="mainController" method="post">
                    <div class="form-group">
                        <div class="col-sm-12 col-lg-3">
                            <label for="username">Usuario: </label>
                        </div>
                        <div class="col-sm-12 col-lg-9">
                            <input type="text" id="username" name="user" class="form-control">
                            <br>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-12 col-lg-3 col">
                            <label for="password">Contraseña: </label>
                        </div>
                        <div class="col-sm-12 col-lg-9">
                            <input type="password" id="password" class="form-control" name="pass">
                            <br><br>
                        </div>
                    </div>
                    <div class="col-xs-12">
                        <button class="btn btn-info btn-block" type="submit">
                            Iniciar Sesion
                        </button>
                    </div>
                </form>
            </div>
        </section>
    </body>
    <script rel="script" src="extraSources/jquery-3.2.1.min.js"></script>
    <script rel="script" src="extraSources/bootstrap.min.js"></script>
</html>

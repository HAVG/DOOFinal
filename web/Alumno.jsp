<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Dashboard</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="extraSources/bootstrap.min.css">
        <link rel="stylesheet" href="extraSources/mainStyles.css">
    </head>
    <body>
        <nav class="navbar navbar-inverse sidebar-nav">
            <div class="container-fluid">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="#">SIASE Controller</a>
                </div>
                <div class="collapse navbar-collapse" id="myNavbar">
                    <ul class="nav navbar-nav">
                      <!--  <li class="dropdown">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#">Page 1 <span class="caret"></span></a>
                            <ul class="dropdown-menu">
                                <li><a href="#">Page 1-1</a></li>
                                <li><a href="#">Page 1-2</a></li>
                                <li><a href="#">Page 1-3</a></li>
                            </ul>
                        </li>-->
                        <li><a href="#">Tareas</a></li>
                        <li><a href="#">Calificaciones</a></li>
                        <li><a onclick="">Enviar mensaje a maestro</a></li>
                    </ul>
                    <!--<ul class="nav navbar-nav navbar-right">
                        <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
                        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
                    </ul>-->
                </div>
            </div>
        </nav>
        <!-- Esta tabla debe de ser rellenada con la informacion de sql -->
        <div class="container" id="inyectable">
            <div>
                <h6>Ultimas tareas</h6>
                <table class="table">
                    <thead>
                        <tr>
                            <th>Materia</th>
                            <th>Fecha</th>
                            <th>Completada</th>
                        </tr>
                        <tr><%=out.println(request.getAttribute("materia"))%></tr>
                        <tr><%=out.println(request.getAttribute("fecha"))%></tr>
                        <tr><%
                            if(Boolean.parseBoolean(request.getAttribute("seExpiro").toString()))
                            {
                                out.println("<img class=\"glyphicon glyphicon-remove\">\n");
                            }
                            else
                            {
                                out.println("<img class=\"glyphicon glyphicon-ok\">\n");
                            }
                        %>
                        </tr>
                    </thead>
                </table>
            </div>
        </div>
    </body>
    <script src="extraSources/jquery-3.2.1.min.js"></script>
    <script src="extraSources/bootstrap.min.js"></script>
</html>
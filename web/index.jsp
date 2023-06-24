<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css">
<style>
        body {
            background-image: url("fondo.jpg");
            background-repeat: no-repeat;
            background-size: cover;
        }
        
        .dark-background-custom {
            background-color: #000; /* Cambia el color de fondo aquí */
            color: #ffffff; /* Cambia el color de texto aquí */
        }
    </style>
</head>
<body>
        <nav class="navbar navbar-expand-lg navbar-light bg-warning">
            <a class="navbar-brand" href="#">Bicitaller</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="Controlador?accion=home">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"></a>
                    </li>
                   <a class="nav-link" href="Controlador?accion=Seleccion">
                   <i class="fas fa-cart-">(<label style="color: orangered">${contador}</label>)</i>Seleccion
                   </a>


                </ul>
                <form class="form-inline my-2 my-lg-0">
                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                </form>
                <ul class="navbar-nav">
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Iniciar Session
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#">Action</a>
                            <a class="dropdown-item" href="#">Another action</a>
                            <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="#">Something else here</a>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
  <div class="container mt-2 dark-background">
    <div class="row">
        <c:forEach var="p" items="${productos}">
                    <div class="col-sm-4">
            <div class="card">
                <div class="card-header">
                    <label>${p.getNombres()}</label>
                </div>
                <div class="card-body">
                    <i>S/.${p.getPrecio()}</i>
                    <img src="ControladorIMG?id=${p.getId()}" width="210" height="170">
                </div>
                <div class="card-footer text-center">
                    <label>${p.getDescripcion()}</label>
                    <div>
                        <a href="Controlador?accion=Agregar&id=${p.getId()}" class="btn btn-danger">Agregar</a>
                        <a href="Controlador?accion=Cita&id=${p.getId()}" class="btn btn-danger">Separar Cita</a>
                        <div href="#" class="form-group">
                            <label  href= "#" for="fecha">Fecha y Hora:</label>
                            <input  href= "#" type="text" class="form-control" id="fecha" name="fecha" readonly>
                        </div>
                        <div  href="#" class="form-group">
                            <label  href= "#" for="descripcion">Descripción:</label>
                            <textarea href= "#" class="form-control" id="descripcion" name="descripcion"></textarea>
                        </div>
                    </div>
                </div>
            </div>
        </div>
            
        </c:forEach>

    </div>
</div>


<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/moment/moment.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<script>
    $(document).ready(function () {
        $('#fecha').daterangepicker({
            singleDatePicker: true,
            timePicker: true,
            timePicker24Hour: true,
            locale: {
                format: 'YYYY-MM-DD HH:mm:ss'
            }
        });
    });
</script>
</body>
</html>
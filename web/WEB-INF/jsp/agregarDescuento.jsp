<%-- 
    Document   : agregarDescuento
    Created on : 13-ago-2019, 19:48:54
    Author     : BRAYAN STID BERNAL
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/form.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery-2.2.4.min.js" type="text/javascript"></script>
        <script src="js/jquery.validate.min.js" type="text/javascript"></script>
        <script src="js/valida.js" type="text/javascript"></script>
        <link rel="stylesheet" href="css/estilos.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body style="background-image: url('images/mujerpiernas3.jpg');">
        <div class="container">
            <br>
            <form method="POST" class="input" id="frm-registro">
                <h4 class="titulo">AGREGAR NUEVO DESCUENTO</h4>
                <br>
                <div class="form-group">
                <label for="valor"  class="label">Valor</label>
                <input type="number" name="valor" id="valor" placeholder="Valor" class="form-control" >
                </div>
                <div class="form-group">
               <label for="fechainicio"  class="label">FechaInicio</label>
               <input type="date" name="FechaInicio" id="FechaInicio" class="form-control" >
                </div>
                <div class="form-group">
               <label for="fechafin"  class="label">FechaFin</label>
               <input type="date" name="FechaFin" id="FechaFin" class="form-control" >
               </div>
            
                <div class="form-group">
            <button type="" class="btn btn-primary"><i class="fas fa-plus-circle"></i></button>
            <button type="" class="btn btn-danger"><a href="indexDescuento.htm"><i class="fas fa-angle-double-left"></i></a></button>
            </div>
            </form>
        </div>
    </body>
</html>

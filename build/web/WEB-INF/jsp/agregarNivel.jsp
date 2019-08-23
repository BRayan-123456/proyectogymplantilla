<%-- 
    Document   : agregarNivel
    Created on : 18/06/2019, 04:13:58 PM
    Author     : Adrian Stuar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
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
               <h4 class="titulo">AGREGAR NUEVO NIVEL</h4>
               <div class="form-group">
               <label for="nombre"  class="label"> Nombre</label>
		<input type="text" class="form-control" placeholder="Nombre" id="nombre" name="nombre" >
		</div>
             
            
                <div class="form-group">
                <button type="" class="btn btn-primary"><i class="fas fa-plus-circle"></i></button>
                <button type="" class="btn btn-danger"><a href="indexNivel.htm"><i class="fas fa-angle-double-left"></i></a></button>
                </div>
            </form>
        </div>
    </body>
</html>

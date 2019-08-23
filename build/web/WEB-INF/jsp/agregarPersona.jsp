
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                <h4 class="titulo">AGREGAR NUEVA PERSONA</h4>
                <div class="form-group">
                <label for="nombre"  class="label">Nombre</label>
                <input type="text" name="nombre" id="nombre" class="form-control" placeholder="Nombre">
                </div>
                <div class="form-group">
                <label for="apellido"  class="label">Apellido</label>
                <input type="text" name="apellido" id="apellido"class="form-control" placeholder="Apellido">
                </div>
                <div class="form-group">
                <label for="documento"  class="label">Documento</label>
                <input type="text" name="documento" id="documento" class="form-control"placeholder="Documento">
                </div>
                <div class="form-group">
                <label for="sexo"  class="label">Sexo</label>
                <select name="sexo" id="sexo" class="form-control" >
                    <option  value="" selected="selected">Seleccione...</option>
                    <option value="Masculino">Masculino</option>
                    <option value="Femenino">Femenino</option>
                </select>
                </div>
                <div class="form-group">
                <label for="correo"  class="label">Correo Electronico</label>
                <input type="text" name="correoelectronico" id="correoelectronico" class="form-control" placeholder="Gmail">
                </div>
                <div class="form-group">
                <label for="discapacidad"  class="label">Discapacidad</label>
                <input type="text" name="discapacidad" id="discapacidad" class="form-control" placeholder="Discapacidad">
                </div>
                <div class="form-group">
                <label for="antecedentes"  class="label">Antecedentes</label>
                <input type="text" name="antecedentes" id="antecedentes" class="form-control" placeholder="Antecedentes">
                </div>
                <div class="form-group">
                <label for="antecedentes"  class="label">Tipo Persona</label>
                <select name="idtipopersona" id="idtipopersona" class="form-control">
                    <c:forEach var="dato" items="${lista}">
                        <option value="${dato.idTipopersona}">${dato.nombre}</option>
                    </c:forEach>
                </select>
                </div>
                
                <div class="form-group">
                <button type="" class="btn btn-primary"><i class="fas fa-plus-circle"></i></button>
                <button type="" class="btn btn-danger"><a href="indexPersona.htm"><i class="fas fa-angle-double-left"></i></a></button>
                </div>
            </form>
             
            
                
        </div>
    </body>
</html>


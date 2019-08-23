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
                 <h4 class="titulo">AGREGAR NUEVA INSCRIPCION</h4>
                <br>
                  <div class="form-group">
                <label for="costo"  class="label">Persona</label>
                <select name="idpersona" id="idpersona" class="form-control">
                    <c:forEach var="dato" items="${listaPe}">
                        <option value="${dato.idPersona}">${dato.documento}</option>
                    </c:forEach>
                </select>
                </div>
              <br>
               <div class="form-group">
                <label for="costo"  class="label">Nivel</label>
                <select name="idNivel" id="idNivel" class="form-control">
                    <c:forEach var="dato" items="${listaNi}">
                        <option value="${dato.idnivel}">${dato.nombre}</option>
                    </c:forEach>
                </select>
                </div>
                <br>
                <div class="form-group">
                <label for="fecha"  class="label">Fecha</label>
                <input type="text" id="fecha" placeholder="Fecha" name="fecha" class="form-control">
                </div>
                <div class="form-group">
                <label for="costo"  class="label">Costo</label>
                <input type="double" id="costo" placeholder="Costo" name="costo" class="form-control">
                </div>
                
               
                
           
              
             
            
                <div class="form-group">
                    <button type="submit"  value="agregar" class="btn btn-primary"><i class="fas fa-plus-circle"></i></button>
            <button type="" class="btn btn-danger"><a href="indexInscripcion.htm"><i class="fas fa-angle-double-left"></i></a></button>
            </div>
            </form>
        </div>
    </body>
</html>


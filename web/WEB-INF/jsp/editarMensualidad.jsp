<%-- 
    Document   : editarNivel
    Created on : 18/06/2019, 04:22:28 PM
    Author     : Adrian Stuar
--%>
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
   <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
 
    <body style="background-image: url('images/mujerpiernas3.jpg');">
      <div class="container">
          <br>
          <h4 class="titulo">EDITAR MENSUALIDAD</h4>
          <form method="POST" class="input" id="frm-registro">
              
                    <div class="form-group">
                      
                      <label class="label"> Valor</label>
                      <input type="double" class="form-control" id="valor" name="valor" placeholder="Valor" value="${lista[0].valor}" >
                      
                  
                    </div>
                    <div class="form-group">
                      
                      <label class="label"> Mes</label>
                      <input type="text" class="form-control" id="mes" name="mes" placeholder="Mes" value="${lista[0].mes}" >
                      
                  
                    </div>
                    <div class="form-group">
                      
                      <label class="label"> Añio</label>
                      <input type="text" class="form-control" id="anio" name="anio" placeholder="Añio" value="${lista[0].anio}" >
                    </div>
                    <div class="form-group">
                      
                      <label class="label"> Fecha</label>
                      <input type="date" class="form-control" id="fecha" name="fecha" value="${lista[0].fecha}" >
                    </div>
                  
                   
                
              <div class="form-group">
                <button type="" class="btn btn-success"><i class="fas fa-edit"></i></button>
                <button type="" class="btn btn-warning"><a href="indexMesualidad.htm"><i class="fas fa-angle-double-left"></i></a></button>
                </div>
          </form>
      </div>
  
  </body>
</html>

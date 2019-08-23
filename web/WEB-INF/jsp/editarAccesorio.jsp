<%-- 
    Document   : editarAccesorio
    Created on : 11/06/2019, 03:18:27 PM
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
     <body style="background-image: url('images/mujerpiernas3.jpg');">
      <div class="container">
          <br>
          <h4 class="titulo">EDITAR ACCESORIO</h4>
          <form method="POST" class="input" id="frm-registro">
              
                    <div class="form-group">
                      
                      <label class="label"> Nombre</label>
                      <input type="text" class="form-control" name="nombre" id="nombre" placeholder="nombre" value="${lista[0].nombre}">
                      
                  
                    </div>
                    <div class="form-group">
                      
                      <label class="label"> Cantidad</label>
                      <input type="number" class="form-control" name="cantidad" id="cantidad" placeholder="Cantidad" value="${lista[0].cantidad}">
                      
                  
                    </div>
                    <div class="form-group">
                      
                      <label class="label"> Talla</label>
                      <input type="text" class="form-control" name="talla" id="talla" placeholder="Talla" value="${lista[0].talla}">
                      
                  
                    </div>
                    <div class="form-group">
                      
                      <label class="label"> Valor</label>
                      <input type="double" class="form-control" name="valor" id="valor" placeholder="Valor" value="${lista[0].valor}">
                      
                  
                    </div>
                    <div class="form-group">
                      
                      <label class="label"> Valor</label>
                      <input type="text" class="form-control" name="color" id="color" placeholder="Color" value="${lista[0].color}">
                      
                  
                    </div>
                      
                      <div class="form-group">
                      <label class="label"> Tipo Accesorio</label>
                      <select name="idtipoaccesorio" class="form-control">
                            <c:forEach var="dato" items="${listad}">
                                <c:if test="${dato.idTipoaccesorio != lista[0].idtipoaccesorio}">
                                    <option value="${dato.idtipoaccesorio}">
                                    ${dato.nombre}
                                </option> 
                                </c:if>
                               
                                 <c:if test="${dato.idTipoaccesorio == lista[0].idtipoaccesorio}">
                                     <option value="${dato.idtipoaccesorio}"selected="true">
                                    ${dato.nombre}
                                </option> 
                                </c:if>
                                
                            </c:forEach>
                            
                        </select>
                    </div>
                
              <div class="form-group">
                <button type="" class="btn btn-success"><i class="fas fa-edit"></i></button>
                <button type="" class="btn btn-warning"><a href="indexAccesorio.htm"><i class="fas fa-angle-double-left"></i></a></button>
                </div>
          </form>
      </div>
  
  </body>
</html>

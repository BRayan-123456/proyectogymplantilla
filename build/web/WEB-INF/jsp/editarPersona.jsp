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
          <h4 class="titulo">EDITAR PERSONA</h4>
          <form method="POST" class="input" id="frm-registro">
              
                    <div class="form-group">
                      
                      <label class="label"> Nombre</label>
                      <input type="text" id="nombre" class="form-control" name="nombre" placeholder="Nombre" value="${lista[0].nombre}">
                      
                  
                    </div>
                      <div class="form-group">
                      
                      <label class="label"> Apellido</label>
                      <input type="text" id="apellido"  class="form-control" name="apellido" placeholder="Apellido" value="${lista[0].apellido}">
                      
                  
                    </div>
                      <div class="form-group">
                      
                      <label class="label">Documento</label>
                      <input type="text" id="documento" class="form-control" name="documento" placeholder="Documento" value="${lista[0].documento}">
                      
                  
                    </div>
                      <div class="form-group">
                      
                      <label class="label">Sexo</label>
                      <input type="text" id="sexo" class="form-control" name="sexo" placeholder="Sexo" value="${lista[0].sexo}">
                      
                  
                    </div>
                    <div class="form-group">
                      
                      <label class="label">Correo Electronico</label>
                      <input type="text" class="form-control" id="correoelectronico" name="correoelectronico" placeholder="Correo Electronico" value="${lista[0].correoelectronico}">
                      
                  
                    </div>
                      <div class="form-group">
                      
                      <label class="label">Discapacidad</label>
                      <input type="text" id="discapacidad" class="form-control" name="discapacidad" placeholder="Discapacidad" value="${lista[0].discapacidad}">
                      
                  
                    </div>
                      <div class="form-group">
                      
                      <label class="label">Antecedentes</label>
                      <input type="text" id="antecedentes" class="form-control" name="antecedentes" placeholder="Antecedentess" value="${lista[0].antecedentes}">
                      
                  
                    </div>
                      <div class="form-group">
                      <label class="label"> Tipo Persona</label>
                      <select name="idtipopersona" class="form-control">
                            <c:forEach var="dato" items="${listad}">
                                <c:if test="${dato.idTipopersona != lista[0].idtipopersona}">
                                    <option value="${dato.idtipopersona}">
                                    ${dato.nombre}
                                </option> 
                                </c:if>
                               
                                 <c:if test="${dato.idTipopersona == lista[0].idtipopersona}">
                                     <option value="${dato.idtipopersona}"selected="true">
                                    ${dato.nombre}
                                </option> 
                                </c:if>
                                
                            </c:forEach>
                            
                        </select>
                    </div>
                
              <div class="form-group">
                <button type="" class="btn btn-success"><i class="fas fa-edit"></i></button>
                <button type="" class="btn btn-warning"><a href="indexPersona.htm"><i class="fas fa-angle-double-left"></i></a></button>
                </div>
          </form>
      </div>
  
  </body>
</html>

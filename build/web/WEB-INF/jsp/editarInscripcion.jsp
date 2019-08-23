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
          <h4 class="titulo">EDITAR INSCRIPCION</h4>
          <form method="POST" class="input" id="frm-registro">
              
                    <div class="form-group">
                      
                      <label class="label"> Fecha</label>
                       <input type="date" class="form-control" id="fecha" name="fecha" placeholder="fecha" value="${lista[0].fecha}">
                      
                  
                    </div>
                    <div class="form-group">
                      
                      <label class="label"> Costo</label>
                     <input type="double" class="form-control" id="costo" name="costo" placeholder="costo" value="${lista[0].costo}">
                      
                  
                    </div>
                    
                      <div class="form-group">
                      <label class="label"> Persona</label>
                      <select name="idpersona" class="form-control">
                            <c:forEach var="dato" items="${listaPe}">
                                <c:if test="${dato.idPersona != listaPe[0].idpersona}">
                                    <option value="${dato.idpersona}">
                                    ${dato.nombre}
                                </option> 
                                </c:if>
                               
                                  <c:if test="${dato.idPersona == listaPe[0].idpersona}">
                                    <option value="${dato.idpersona}">
                                    ${dato.nombre}
                                </option> 
                                </c:if>
                                
                            </c:forEach>
                                
                            
                            
                        </select>
                    </div>
                     
                     <div class="form-group">
                         <label class="label"> Descuento</label>
                           <select name="iddescuento" class="form-control">
                            <c:forEach var="dato" items="${listaD}">
                                <c:if test="${dato.idDescuento != listaD[0].iddescuento}">
                                    <option value="${dato.iddescuento}">
                                    ${dato.valor  }
                                </option> 
                                </c:if>
                               
                                  <c:if test="${dato.idDescuento == listaD[0].iddescuento}">
                                    <option value="${dato.iddescuento}">
                                    ${dato.valor}
                                </option> 
                                </c:if>
                                
                            </c:forEach>

                        </select>
                    </div>
                     
                     <div class="form-group">
                      <label class="label">Nivel</label>
                       <select name="idNivel" class="form-control">
                        <c:forEach var="dato" items="${listaNi}">
                                <c:if test="${dato.idnivel != listaNi[0].idNivel}">
                                    <option value="${dato.idNivel}">
                                    ${dato.nombre}
                                </option> 
                                </c:if>
                               
                                 <c:if test="${dato.idnivel == listaNi[0].idNivel}">
                                    <option value="${dato.idNivel}">
                                    ${dato.nombre}
                                </option> 
                                </c:if>
                                
                            </c:forEach>
                                 </select>
                    </div>
                
              <div class="form-group">
                <button type="" class="btn btn-success"><i class="fas fa-edit"></i></button>
                <button type="" class="btn btn-warning"><a href="indexInscripcion.htm"><i class="fas fa-angle-double-left"></i></a></button>
                </div>
          </form>
      </div>
  
  </body>
  
</html>

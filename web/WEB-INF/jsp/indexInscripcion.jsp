<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="css/form.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery-2.2.4.min.js" type="text/javascript"></script>
        <script src="js/jquery.validate.min.js" type="text/javascript"></script>
       <link href="css/estilosindex.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="css/estilos.css">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
   
    </head>
    <body style="background: black;">
        <div class="container">
            
            <div id="mensaje"></div>
        <table class="table table-striped table-dark" style="text-align: center;">
            <thead>
                <tr>
                  
                    <th class="iniciotable">Nombre del Nivel</th>
                    <th class="iniciotable">Nombre de la Persona</th>
                    <th class="iniciotable">Documento</th>
                    <th class="iniciotable">Fecha</th>
                    <th class="iniciotable">Costo</th>
                    <th class="iniciotable">Valor del Descuento</th>
                    
                </tr>
            </thead>
            <tbody>
                <c:forEach var="dato" items="${lista}">
                     <tr>
                        
                        <td class="iniciotable">${dato.nomnivel}</td>
                        <td class="iniciotable">${dato.nompersona}</td>
                        <td class="iniciotable">${dato.docpersona}</td>
                      <td class="iniciotable">${dato.fecha}</td>
                      <td class="iniciotable">${dato.costo}</td>
                        <td class="iniciotable">${dato.valdescuento}</td>
                       
                     
                        <td>
                             <a class="btn btn-primary" href="agregarInscripcion.htm"><i class="fas fa-plus-circle"></i></a>
                            <a href="editarInscripcion.htm?idInscripcion=${dato.idInscripcion}" class="btn btn-success"><i class="fas fa-edit"></i></a>
                            
                            <a class="btn btn-danger eliminar"  idInscripcion="${dato.idInscripcion}"><i class="fas fa-trash-alt"></i></a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
      </div>
        <script>
        $(document).ready(function(){

    $('.eliminar').on('click','',function(){
        
        $('#mensaje').load('eliminarInscripcion.htm',"idInscripcion="+ $(this).attr('idInscripcion'));
        console.log($(this).attr('idInscripcion'));
        console.log("funciona");
    }
    );
   
});
        
        </script>
    </body>
</html>

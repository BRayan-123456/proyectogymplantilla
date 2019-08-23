<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
        <link href="css/estilosindex.css" rel="stylesheet" type="text/css"/>
    
    </head>
    <body style="background: black;">
        <div class="container">
        <table class="table table-striped table-dark" style="text-align: center;">
            <thead>
                <tr>
                    <th class="iniciotable">Valor</th>
                    <th class="iniciotable">Mes</th>
                    <th class="iniciotable">Anio</th>
                   <th class="iniciotable">Fecha</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="dato" items="${lista}">
                     <tr>
                        <td class="iniciotable">${dato.valor}</td>
                         <td class="iniciotable">${dato.mes}</td>
                          <td class="iniciotable">${dato.anio}</td>
                           <td class="iniciotable">${dato.fecha}</td>
                        
                        <td>
                            <a class="btn btn-primary" href="agregarMensualidad.htm"><i class="fas fa-plus-circle"></i></a>
                            <a href="editarMensualidad.htm?idMensualidad=${dato.idMensualidad}" class="btn btn-success"><i class="fas fa-edit"></i></a>
                            <a onclick="return confirm('Esta seguro?');"
                               href="deleteMensualidad.htm?idMensualidad=${dato.idMensualidad}" class="btn btn-danger"><i class="fas fa-trash-alt"></i></a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
       </div>
    </body>
</html>


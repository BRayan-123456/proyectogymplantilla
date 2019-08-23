<%-- 
    Document   : indexDescuento
    Created on : 13-ago-2019, 19:11:40
    Author     : BRAYAN STID BERNAL
--%>

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
                    <th class="iniciotable">FechaInicio</th>
                    <th class="iniciotable">FechaFin</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="dato" items="${lista}">
                     <tr>
                        <td class="iniciotable">${dato.valor}</td>
                        <td class="iniciotable">${dato.FechaInicio}</td>
                        <td class="iniciotable">${dato.FechaFin}</td>
                        <td>
                             <a class="btn btn-primary" href="agregarDescuento.htm"><i class="fas fa-plus-circle"></i></a>
                            <a href="editarDescuento.htm?idDescuento=${dato.idDescuento}" class="btn btn-success"><i class="fas fa-edit"></i></a>
                            <a onclick="return confirm('Esta seguro?');"
                               href="deleteDescuento.htm?idDescuento=${dato.idDescuento}" class="btn btn-danger"><i class="fas fa-trash-alt"></i></a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
       </div>
    </body>
</html>


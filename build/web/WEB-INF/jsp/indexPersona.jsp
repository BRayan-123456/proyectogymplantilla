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
                  
                    <th class="iniciotable">Nombre</th>
                    <th class="iniciotable">Apellido</th>
                    <th class="iniciotable">Documento</th>
                    <th class="iniciotable">Sexo</th>
                    <th class="iniciotable">Correo Electronico</th>
                     <th class="iniciotable">Discapacidad</th>
                    <th class="iniciotable">Antecedentes</th>
                    <th class="iniciotable">Tipo persona</th>
                    
                </tr>
            </thead>
            <tbody>
                <c:forEach var="dato" items="${lista}">
                     <tr>
                        
                        <td class="iniciotable">${dato.nombre}</td>
                        <td class="iniciotable">${dato.apellido}</td>
                        <td class="iniciotable">${dato.documento}</td>
                        <td class="iniciotable">${dato.sexo}</td>
                        <td class="iniciotable">${dato.correoelectronico}</td>
                        <td class="iniciotable">${dato.discapacidad}</td>
                        <td class="iniciotable">${dato.antecedentes}</td>
                        <td class="iniciotable">${dato.nombretipo}</td>
                     
                        <td>
                            <a class="btn btn-primary" href="agregarPersona.htm"><i class="fas fa-plus-circle"></i></a>
                            <a href="editarPersona.htm?idPersona=${dato.idPersona}" class="btn btn-success"><i class="fas fa-edit"></i></a>
                            <a onclick="return confirm('Esta seguro?');"
                               href="deletePersona.htm?idPersona=${dato.idPersona}" class="btn btn-danger"><i class="fas fa-trash-alt"></i></a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
      </div>
    </body>
</html>

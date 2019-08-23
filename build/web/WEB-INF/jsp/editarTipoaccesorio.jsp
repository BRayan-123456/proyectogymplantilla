<%-- 
    Document   : agregarDepto
    Created on : 21/05/2019, 04:46:44 PM
    Author     : Adrian Stuar
--%>

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
          <h4 class="titulo">EDITAR TIPO ACCESORIO</h4>
          <form method="POST" class="input" id="frm-registro">
              
                    <div class="form-group">
                      
                      <label class="label"> Nombre</label>
                      <input  placeholder="Nombre" class="form-control" id="nombre" name="nombre"  value="${lista[0].nombre}" >
                      
                  
                    </div>
                    
                   
                
              <div class="form-group">
                <button type="" class="btn btn-success"><i class="fas fa-edit"></i></button>
                <button type="" class="btn btn-warning"><a href="indexTipoaccesorio.htm"><i class="fas fa-angle-double-left"></i></a></button>
                </div>
          </form>
      </div>
  
  </body>
</html>

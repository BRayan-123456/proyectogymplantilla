 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Formulario</title>
		<link rel="stylesheet" type="text/css" href="css/estilo.css">
                <link href="css/login.css" rel="stylesheet" type="text/css"/>
		  <link href="css/form.css" rel="stylesheet" type="text/css"/>
        <script src="js/jquery-2.2.4.min_1.js" type="text/javascript"></script>
        <script src="js/jquery.validate.min.js" type="text/javascript"></script>
        <script src="js/validar.js" type="text/javascript"></script>
	</head>
	<body>
		<div id="contenedor-form">
			<form action="#" method="post" id="frm-registro">
				<p class="nombre">
					<input type="text" class="input" placeholder="Usuario" id="Usuario" name="Usuario" onblur="revisar(this)" onkeyup="revisar(this)" autocomplete="off" required>
				</p>
				
				
				<p class="Contaseña">
					<input type="text" class="input" placeholder="Clave" id="Clave" name="Clave" onblur="revisar(this); revisaNumero(this)" onkeyup="revisar(this); revisaNumero(this)" autocomplete="off" required>
				</p>
                               <p class="Contaseña_again">
                              
				<div class="enviar">
					<input type="submit" value="Agregar" id="enviar"/>
					<div class="transicion"></div>
				</div>
                                 <a href="index.htm">Regresar</a>
                                
			</form>
		</div>
	</body>
</html>
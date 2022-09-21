<?php
// trae la conexion
include "conexion.php";
//me permite trabajar con caracteres españoles
$acentos = $con->query("SET NAMES 'utf8'");
//selecciona todo los registros de la tabla categoria
?>

<!DOCTYPE html>
<html lang="es">
<html>

<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta charset="utf-8">
	<meta name="keywords" content="html5,css,php,sql"/>
	<link rel="stylesheet" type="text/css" href="css/formulario_uno.css"/>
		<title>Pagina Oficial</title>
	<script src="js/peticiones.js"></script>
</head>
<body>

 	<header>
    <h1>Nuevo Ingreso</h1>
  </header>

		<form action="formuno.php" autocomplete="OFF" method="POST">

<!-- N° RECLAMO ES COMO EL ID O LLAVE PRIMARIA DEL FORMULARIO -->
		<section class="uno">
			<h3>N° reclamo</h3>
			  <input type="int" name="numreclamo" required class="botones"/>
		</section>

	<!-- Es la fecha y la hora que en el formulario estan divididas -->
		<section class="uno">
			<h3>Fecha Inicio</h3>
			  <input type="date" name="fechain" required class="botones"/>
		</section>

		<section class="uno">
			<h3>Hora Inicio</h3>
			  <input type="time" name="horain" required class="botones"/>
		</section>

	<!-- Consulta cual es la falla detectada por medio de un seleccionador, para normalizar la letra de la falla -->
		<section class="uno">
			<h3>Falla Detectada</h3>
			  <select name="falla" class="botones">

			  <option value="apagado">Apagado</option>
			  <option value="apagadocolision">Apagado por colision</option>
			  <option value="apagadovandalismo">Apagado por vandalismo</option>

			  <option value="columnagirada">Columna Girada</option>
			  <option value="descoordinado">Descoordinado</option>
			  <option value="desincronizado">Desincronizado</option>

			  <option value="errorcomunicacion">Error de comunicación</option>
			  <option value="errorGPS">Error de GPS</option>
			  <option value="pasacalles">Pasacalles</option>
			  <option value="programacion">Programacion</option>
			  <option value="puesta-marcha">Puesta en marcha</option>

			  <option value="señal-girada">Señal girada</option>
			  <option value="señal-quemada">Señal quemada</option>
			  <option value="señal-tapada-por-arbol">Señal tapada por arbolado</option>

			  <option value="sinconexion">Sin conexión</option>
			  <option value="titilante">Titilante</option>
			  <option value="titilante-por-colision">Titilante por colision</option>
			  <option value="titilante-por-vandalismo">Titilante por vandalismo</option>

			  <!-- Agregarle a esta opcion como algo para rellenar pero que no tenga que ser requerido<option value="electro">otros</option> -->
			</select>
		</section>

	<!-- es un buscador para los curces, las intersecciones o las localidades //pero aun no logro conectar la base de datos con el buscador-->
		<section>
			<label for="campo">N° de cruce o localidad:</label>
			<input type="text" name="cruce" id="campo"/>
			<ul id="lista"></ul>
		</section>	
	<!-- Este buscador esta conectado por un JSON en JS codigos y nombres carpeta inc(DATABASE.PHP y getCodigos.php son los codigos del buscador) + las carpeta js (peticiones.js) -->

<!-- Detalles del personal administrativo o del tecnico sobre el semaforo -->
		<section class="uno">
			<h3>Detalles</h3>
			  <input type="text" name="detalles" required class="botones"/>
		</section>
			            
			<input type="submit" value="Guardar" class="boton"/>
	</form>  
<!-- este formulario se conecta con el formuno.php a la base de datos cimm -->


<a href="principal.php"><input type="button" name="volver a inicio" value="Volver al inicio" class="botones"/></a>

</body>
</html>
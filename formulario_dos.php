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
	<link rel="stylesheet" type="text/css" href="css/formulario_dos.css"/>
	<title>Pagina Oficial</title>
</head>
<body>

 	<header>
    <h1>Reparación</h1>
  </header>

		<form action="formdos.php" method="POST">

		<!-- N° RECLAMO ES COMO EL ID O LLAVE PRIMARIA DEL FORMULARIO -->
		<section class="uno">
			<h3>N° reclamo</h3>
			  <input type="int" name="numreclamo" required class="botones"/>
		</section>

<!-- fecha de llegada del tecnico al lugar -->
		<section class="uno">
			<h3>Fecha de llegada</h3>
			  <input type="date" name="fechalle" required class="botones"/>
		</section>

<!-- hora de llegada del tecnico al lugar -->
		<section class="uno">
			<h3>hora de llegada</h3>
			  <input type="time" name="horalle" required class="botones"/>
		</section>

<!-- Vehiculo que lleva al tecnico al lugar del relevamiento  -->
		<section class="uno">
			<h3>Vehiculo</h3>
			  <input type="text" name="vehiculo" required class="botones"/>
		</section>

<!-- Observaciones del tecnico con respecto al semaforo -->
		<section class="uno">
			<h3>Observaciones</h3>
			  <input type="text" name="observa" required class="botones"/>
		</section>

<!-- acciones que realizo el tecnico en el lugar -->
		<section class="uno">
			<h3>Acciones realizadas</h3>
			  <input type="text" name="acciones" required class="botones"/>
		</section>

<!-- fecha en la que finalizo el relevamiento del tecnico en el lugar -->
		<section class="uno">
			<h3>Fecha de cierre</h3>
			  <input type="date" name="fechaci" required class="botones"/>
		</section>

<!-- hora en la que finalizo el relevamiento del tecnico en el lugar -->
		<section class="uno">
			<h3>hora de cierre</h3>
			  <input type="time" name="horaci" required class="botones"/>
		</section>


			            
			<input type="submit" value="Guardar" class="boton"/>
		</form>  
		<!-- este formulario se conecta con el formdos.php a la base de datos cimm -->

<a href="principal.php"><input type="button" name="volver a inicio" value="Volver al inicio" class="botones"/></a>
</body>
</html>
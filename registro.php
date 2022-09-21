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
	<link rel="stylesheet" type="text/css" href="css/registro.css"/>
	<title>Pagina Oficial</title>
</head>

<body>

	<header>
    <h1>Registro</h1>
  </header>

		<form action="guardar.php" method="get">

		<section>
			<h3>Nombre Usuario</h3>
			  <input type="text" name="nombre" placeholder="Nombre Usuario" required class="botones"/>
		</section>

		<section>
			<h3>N° Legajo</h3>
			  <input type="number" name="legajo" placeholder="N° Legajo" required class="botones" />
		</section>

		<section>
			<h3>Correo</h3>
			  <input type="mail" name="correo" placeholder="Correo" required class="botones" />
			<br><br>
		</section>

		<section>
			<h3>Puesto de Trabajo</h3>
			  <select name="puesto" class="botones">
			  <option value="admin"> Personal Administrativo</option>
			  <option value="electro">Tecnico Electricista</option>
			  <option value="ayudante">Tecnico Ayudante</option>
			  <option value="chofer">Chofer</option>
			</select>
			<br><br>
		</section>

			<!-- <h3>Contraseña</h3>
			  <input type="password" name="password" required class="botones"/> -->
			            
		<input type="submit" value="Guardar" class="boton"/>

		</form>  
	<a href="index.html"><input type="button" name="registro" value="Volver al inicio" class="botones"/></a>


</body>
</html>
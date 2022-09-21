<?php
	session_start();
		if (!isset($_SESSION["nombre"])) {
		header("location:inicio.php");
				}

echo "hola, ".$_SESSION["nombre"]." ";
echo "<h3><a href='cerrar_sesion.php'><i class='fas fa-door-open'></i>Cerrar Sesión</a></h3>";
?>

<?php
 	$conexion=mysqli_connect('localhost','root','','cimm')
?>

<!DOCTYPE html>
<html lang="es">
<html>

<head>
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta charset="utf-8">
	<meta name="keywords" content="html5,css,php,sql"/>
	<link rel="stylesheet" type="text/css" href="css/principal.css"/>
	<title>Pagina Oficial</title>
</head>


<body>
	<header>
		<h1>CIMM Online</h1>
		<img class="logo" src="img/logo_horizontal.png">
	</header>

	<section class="uno">
  	<center>
    	<!-- <h3>Nuevo Ingreso</h3> -->
        <a href="formulario_uno.php"><input type="button" name="registro" value="Nuevo Ingreso" class="botones"/></a>
  	</center>        
	</section>


	<table border="1" class="excel">
		<tr>

			<td>n°reclamo</td>
			<td>fecha inicio</td>
			<td>hora inicio</td>
			<td>falla</td>
			<td>cruce</td>
			<td>detalles</td>
			<td>fecha llegada</td>
			<td>hora llegada</td>
			<td>vehiculo</td>
			<td>observaciones</td>
			<td>acciones</td>
			<td>fecha cierre</td>
			<td>hora cierre</td>
		</tr>	

		<?php
			$sql='SELECT * FROM nuevoingreso inner join reparacion on nuevoingreso.numreclamo=reparacion.numreclamo';

			$query=mysqli_query($conexion, $sql);

			while($mostrar=mysqli_fetch_array($query)){
		?>

		<tr>
			<td><?php echo $mostrar['numreclamo'] 	?></td>
			<td><?php echo $mostrar['fechain']	  ?></td>
			<td><?php echo $mostrar['horain']	  ?></td>
			<td><?php echo $mostrar['falla'] 	?></td>
			<td><?php echo $mostrar['cruce'] ?></td>	
			<td><?php echo $mostrar['detalles'] ?></td>	
			<td><?php echo $mostrar['fechalle']	?></td>
			<td><?php echo $mostrar['horalle'] 	?></td>
			<td><?php echo $mostrar['vehiculo']	  ?></td>
			<td><?php echo $mostrar['observa']	  ?></td>
			<td><?php echo $mostrar['acciones'] 	?></td>
			<td><?php echo $mostrar['fechaci'] ?></td>	
			<td><?php echo $mostrar['horaci'] ?></td>	
		</tr>


		<?php
			}
		?>
	</table>


	<section class="uno">
    <center>
<!--       <h3>Reparación</h3> -->
      <a href="formulario_dos.php"><input type="button" name="iniciar" value="Reparacion" class="botones"/></a>
    </center>        
  </section>

</body>
</html>
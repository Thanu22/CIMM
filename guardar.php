<?php
	$nombre=$_REQUEST['nombre'];
	$legajo=$_REQUEST['legajo'];
    $correo=$_REQUEST['correo'];
    $puesto=$_REQUEST['puesto'];
    //$password=$_REQUEST['password'];

	include "conexion.php";

	$SQL="INSERT INTO registro (nombre, legajo, correo, puesto, password) VALUES 
	('$nombre', '$legajo', '$correo', '$puesto', '$legajo')";

	if(!$error= $con->query($SQL)){
        echo $con->error;
    }

    //<!--El header redirige a la pagina principal-->    
	header ("location:principal.php");
?>
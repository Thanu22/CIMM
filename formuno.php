<?php
	$nreclamo=$_REQUEST['numreclamo'];
	$fechain=$_REQUEST['fechain'];
    $horain=$_REQUEST['horain'];
    $falla=$_REQUEST['falla'];
    $cruce=$_REQUEST['cruce'];
    $detalles=$_REQUEST['detalles'];

	include "conexion.php";

	$SQL="INSERT INTO nuevoingreso (numreclamo, fechain, horain, falla, cruce, detalles) VALUES 
	('$nreclamo', '$fechain', '$horain', '$falla', '$cruce' , '$detalles')";

	if(!$error= $con->query($SQL)){
        echo $con->error;
    }

    //<!--El header redirige a la pagina principal-->    
	header ("location:principal.php");
?>
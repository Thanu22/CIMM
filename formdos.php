<?php
    $numreclamo=$_REQUEST['numreclamo'];
	$fechalle=$_REQUEST['fechalle'];
	$horalle=$_REQUEST['horalle'];
    $vehiculo=$_REQUEST['vehiculo'];
    $observa=$_REQUEST['observa'];
    $acciones=$_REQUEST['acciones'];
    $fehcaci=$_REQUEST['fechaci'];
    $horaci=$_REQUEST['horaci'];

	include "conexion.php";

	$SQL="INSERT INTO reparacion (numreclamo, fechalle, horalle, vehiculo, observa, acciones, fechaci, horaci) VALUES 
	('$numreclamo'$fechalle' , '$horalle' ,  '$vehiculo' , '$observa' , '$acciones' , '$fechaci' , '$horaci')";

	if(!$error= $con->query($SQL)){
        echo $con->error;
    }

    //<!--El header redirige a la pagina principal-->    
	header ("location:principal.php");
?>
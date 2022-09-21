<?php

try {
    $base= new PDO ("mysql:host=localhost; dbname=cimm", "root", "");
    //$base= new PDO ("mysql:host=localhost; dbname=u761283263_athar", "u761283263_damian", "Damian123456");
    $base->setAttribute (PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $sql= "SELECT * FROM registro WHERE nombre= :nombre AND password= :password";    
    $resultado= $base->prepare($sql);
    $nombre=htmlentities(addslashes($_POST["nombre"])); //omite caracteres especiales que se hayan ingresado en el form para evitar inyec sql algo
    $password=htmlentities(addslashes($_POST["password"]));
    
    //el marcador se corresponde con log
    $resultado->bindValue(":nombre", $nombre);
    $resultado->bindValue(":password", $password);
    $resultado->execute(); //ejecutamos
    //corroboramos si el usuario existe en la bbdd   
    $cantidad_registro=$resultado->rowCount(); //el resultado es 0 o 1
    
    if ($cantidad_registro!=0) {
        session_start();
        $_SESSION["nombre"]=$_POST["nombre"];   
        header("location:principal.php");
    }else {
        
        header("location:inicio.php");
    }
       
} catch (Exception $e) {
    
   die ("Error: " .$e->getMessage());
}
?>
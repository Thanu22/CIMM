<?php

require 'database.php';

$con = new Database();
$pdo = $con->conectar();

$campo = $_POST["campo"];

// base de datos
$sql = "SELECT cruces, arteria_uno, arteria_dos, arteria_cuatro, localidad FROM buscador WHERE cruces LIKE ? OR arteria_uno LIKE ? OR arteria_dos LIKE ? OR arteria_tres LIKE ? OR arteria_cuatro LIKE ? OR localidad LIKE ? ORDER BY cruces ASC LIMIT 0, 10";

$query = $pdo->prepare($sql);
$query->execute(['%' .$campo . '%', '%' .$campo . '%']);
// '%'concatena el campo con el %, esto hace que se busque cuando termine de encontrar la variable del cruce tipo 25% y te buscara los 2505,2566,2580,2597,2598,2589, etc.

$html = "";

while ($row = $query->fetch(PDO::FETCH_ASSOC)) {
	$html .= "<li onclick=\"mostrar('" . $row["cruces"] "')\">" . $row["cruces"] . " - " . $row["arteria_uno"] . " - " . $row["arteria_dos"] . $row["arteria_tres"] . " - " . $row["arteria_cuatro"] . " - " . $row["localidad"] . "</li>";
}

echo json_encode($html, JSON_UNESCAPED_UNICODE);
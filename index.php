<?php

/*
// 1) Conexión
if ($conexión = mysqli_connect("localhost", "root", "")){
	
		echo "<p>MySQL le ha dado permiso a PHP para ejecutar consultas con ese usuario</p>";

		// 2) Preparar la orden SQL
		$consulta = "SELECT * FROM clientes";

		// 3) Ejecutar la orden y obtener datos
		mysqli_select_db("comercio");
		$datos = mysqli_query ($consulta);

		// 4) Ir Imprimiendo las filas resultantes
		while ($fila = mysqli_fetch_array($datos)){
			
			echo "<p>";
			echo $fila ["idCliente"];
			echo "-"; // un separador
			echo $fila["nombre"];
			echo "-"; // un separador
			echo $fila ["apellido"];
			echo "-"; // un separador
			echo $fila["cuit"];
			echo "</p>";
		}

}else{
	
	echo "<p> MySQL no conoce ese usuario y password</p>";
}

*/

$mysqli = new mysqli('127.0.0.1', 'root', '', 'comercio');
$mysqli->set_charset("utf8");


$res = $mysqli->query("SELECT * FROM clientes");

while($f = $res->fetch_object()){
    echo $f->nombre.' <br/>';
}
?>
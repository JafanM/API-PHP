<?php
$host='localhost';
$user='root';
$password='';
$database='biblioteca';
$mysqli= new mysqli($host,$user,$password,$database);
if($mysqli->connect_errno){
 	echo "El error al  conectar la BD: ".$mysqli->connect_errno;
}else{
	
}

?>
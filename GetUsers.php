<?php

//necesitamos este emcabezado para que funcione:

//para acceder a la API desde cualquier pc
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Origin, X-Requestes-Whit, Content-Type, Accept');
//para que me de la respuesta en json
header("Content-Type: application/json; charset=UTF-8");
header('Content-Type: application/json');





require("conexion.php"); //incluyendo la conexion

$respuesta ['codigo'] = '-1';
$respuesta ['mensaje'] = 'No hay registro';
$sql = "select * from usuarios order by id"; //ordenando por id

if(isset($_GET['id'])){
    $id = $_GET['id'];
    $sql = "select *  from usuarios where id=".$id;

}

$result = $mysqli->query($sql); //hacemos la consulta BD
//para saber si la consulta hizo algo:
if(mysqli_num_rows($result) > 0){ //si los registros son mayor a 0 funciona

    //convirtiendo los registros en un array asociativo
    $registros =mysqli_fetch_all($result,MYSQLI_ASSOC);
    echo json_encode($registros); //imprimiendo en json


}else{
    echo json_encode($respuesta);
}

?>


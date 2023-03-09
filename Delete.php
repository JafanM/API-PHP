<?php
header('Access-Control-Allow-Origin: *');
header('Access-Control-Allow-Headers: Origin, X-Requestes-Whit, Content-Type, Accept');
header("Content-Type: application/json; charset=UTF-8");
header('Content-Type: application/json');

$json=file_get_contents('php://input');//captura el parametro en json {'id':118}
$params=json_decode($json);//paramteros
require('conexion.php');
$respuesta['codigo']='-1';
$respuesta['mensaje']='Faltan parámetros';
// si le enviamos parametros
if(isset($params))//si recibe una variable por get llamada 'id'
{
    $id=$params->id;
    $sql="delete from usuarios where id=".$id;
    $result=$mysqli->query($sql);//hace la consulta en la BD
    if($mysqli->affected_rows>0)//cuantos reg fueron fueron afectados
    {
        $respuesta['codigo']='OK';
        $respuesta['mensaje']='Registro eliminado';
    }
    else
    {
        $respuesta['codigo']='-1';
        $respuesta['mensaje']='Error no se pudo eliminar';
    }
}    
echo json_encode($respuesta);




?>
<?php

$conn = mysqli_connect("localhost", "root" , "" , "prueba", 3306);

if(!$conn){
    die("Conexion fallida al servidor : ".mysqli_connect_error());
}

$consulta = "insert into empresas (nombreEmpresa, giro, pais, sueldo, tipoPago , correo) values ('".$_POST['nombreEmpresa']."','".$_POST['giro']."','".$_POST['pais']."',
'".$_POST['sueldo']."','".$_POST['tipoPago']."','".$_POST['correo']."')";

$resultado = (mysqli_query($conn, $consulta));
if(!$resultado){
    if(mysqli_query($conn, $consulta)){

    }
    else{
        echo "Error al ingresar los datos ". $consulta. "<br>".mysqli_error($conn);
    }
}
else 
{
    echo '<script type="text/javascript">alert("Nuevo registro creado exitosamente")</script>';
}
    mysqli_close($conn);

    ob_start();
    header("refresh:5, url=Bienvenida.php");
    ob_end_flush();
?>
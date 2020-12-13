<?php

$conn = mysqli_connect("localhost", "root" , "" , "prueba", 3306);

if(!$conn){
    die("Conexion fallida al servidor : ".mysqli_connect_error());
}

$consulta = "insert into departamentos (nombreDepartamento, titular, edificio, piso, correo, telefono) values ('".$_POST['nombreDepartamento']."','".$_POST['titular']."','".$_POST['edificio']."',
'".$_POST['piso']."','".$_POST['correo']."','".$_POST['telefono']."')";

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

  
?>
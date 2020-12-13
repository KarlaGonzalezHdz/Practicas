<?php

    $serve="localhost";
    $bd= "prueba";
    $user="root";
    $password="";
    

    //conexion base de datos
    //$conexion = mysqli_connect("localhost", "root", "" , "prueba");

    $conexion=mysqli_connect($serve, $user , $password , $bd, 3306);

    //validacion de conexion
    if(!$conexion){
        die("Conexion fallida de servidor".mysqli_connect_error());
    }

    $sql = "insert into datos (nombre, apellidop, apellidom, fechaNacimiento, calle, numero , colonia, ciudad, cp, estado, telefono, usuario,correo, contrasena, contrasenac) 
    values ( '".$_POST['nombre']."','".$_POST['apellidop']."','".$_POST['apellidom']."','".$_POST['fechaNacimiento']."','".$_POST['calle']."','".$_POST['numero']."','".$_POST['colonia']."','".
    $_POST['ciudad']."','".$_POST['cp']."','".$_POST['estado']."','".$_POST['telefono']."','".$_POST['usuario']."','".$_POST['correo']."','".$_POST['contrasena']."','".$_POST['contrasenac']."')";


    $result=mysqli_query($conexion, $sql);

    if(!$result){
      if (mysqli_query($conexion, $sql))
        {}
        else 
        {
            echo "Error en el registro por ".$sql."<br>".mysqli_error($conexion);
        }
    }
        else
           { echo "Registro exitoso";} 
        
    mysqli_close($conexion);

    ob_start();
        header("refresh:5, url=FormDatos.php");
        ob_end_flush();

?>
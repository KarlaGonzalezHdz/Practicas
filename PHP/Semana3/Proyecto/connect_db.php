<?php
    $conn = mysqli_connect("localhost", "root", "", "proyecto", 3306);

    if($conn ->connect_errno){
        die("Conexion fallida la conexion :(".$conn -> mysqli_connect_errno().")".$conn->mysqli_connect_error());
    }

    
?>
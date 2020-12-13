<?php
    extract($_POST);

    require("connect_db.php");

    $sentencia = "UPDATE login SET nom ='$nom', user ='$user', email  ='$email', pass='$pass', confpass ='$confpass',
    rol='$rol' WHERE id='$id'";

    $resent = mysqli_query($conn, $sentencia);

    if($resent==null){
       // echo "Error, no se actualizaron los datos";
        echo '<script>alert("Error, no se actualizaron los datos")</script>';
        header("location:admin.php");

    } else {
        echo '<script>alert("Registro actualizado exitosamente")</script>';
        echo "<script>location.href='admin.php'</script>";
    }
?>
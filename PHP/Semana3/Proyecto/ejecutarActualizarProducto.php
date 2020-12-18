<?php
    extract($_POST);

    require("connect_db.php");

    $sentencia = "UPDATE productos SET clave ='$clave', nomprod ='$nomprod', descrip  ='$descrip', modelo='$modelo', precio ='$precio',
    cant='$cant' WHERE folio='$folio'";

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
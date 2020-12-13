<?php
    $nombre = $_GET['nombre'];
    echo "Tu nombre es ".$nombre;
    echo "<br>";

   /*  $edad = $_GET['b'];
    echo "Tu edad es ".$edad; */

    echo htmlspecialchars($_GET['nombre']);

?>

<br>
Usted tiene 
<?php
    echo (int)$_GET['edad'];
?>
 años

 <?php
    ob_start();
    header("refresh:10, url=Formulario.php");
    ob_end_flush();
 ?>
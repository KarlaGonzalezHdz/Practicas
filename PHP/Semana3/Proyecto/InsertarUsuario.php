<?php
    require("connect_db.php");

    $email = $_POST['email'];

    $sql = mysqli_query($conn , "SELECT id , nom , pass, rol FROM login WHERE email='$email' and rol=2");

    if($f2=mysqli_fetch_assoc($sql)){
       echo '<script type="text/javascript">alert("Error, el correo ya esta registrado")</script>';
       ob_start();
       header("refresh:5, url=registrar.php");
      ob_end_flush();

    }else{
        if($_POST['pass'] == $_POST['confpass']){

            $consulta = "INSERT INTO login (nom, user, email, pass, confpass, rol) VALUES ('".$_POST['nom']."','".$_POST['user']."','".$_POST['email']."','".$_POST['pass']."','".$_POST['confpass']."','2')";
    
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
                header("refresh:5, url=login.php");
                ob_end_flush();
      }else {
        echo '<script type="text/javascript">alert("Error, las contraseñas no coinciden")</script>';
                ob_start();
                 header("refresh:5, url=registrar.php");
                ob_end_flush();
      }
        
    }


    ?>
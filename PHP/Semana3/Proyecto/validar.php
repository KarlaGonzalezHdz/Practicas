<?php

    session_start();

    require("connect_db.php");

    $username =$_POST['email'];
    $pass = $_POST['password'];
    $_SESSION['username'] = $username;

    $sql2 = mysqli_query($conn , "SELECT id , nom , pass, rol FROM login WHERE email='$username' and rol=1");
    
    if($f2=mysqli_fetch_assoc($sql2)){
        if($pass==$f2['pass'])
        {
            $_SESSION['id']=$f2['id'];
            $_SESSION['nom']=$f2['nom'];
            $_SESSION['rol']=$f2['rol'];

            echo '<script>alert("Bienvenido Administrador")</script>';
            echo "<script>location.href='admin.php'</script>";
        }else 
        {
            echo '<script>alert("Contraseña incorrecta 1")</script>';
            echo "<script>location.href='login.php'</script>";
        }
    }
    else
    {
        $sql = mysqli_query($conn , "SELECT id , nom , pass, rol FROM login WHERE email='$username' and rol=2");
    
        if($f=mysqli_fetch_assoc($sql)){
            if($pass==$f['pass']){
                $_SESSION['id']=$f['id'];
                $_SESSION['nom']=$f['nom'];
                $_SESSION['rol']=$f['rol'];
                echo '<script>alert("Bienvenido")</script>';
                echo "<script>location.href='index2.php'</script>";
        }else 
        {
            echo '<script>alert("Contraseña Incorrecta")</script>';
            echo "<script>location.href='login.php'</script>";
        }
    }else 
    {
        echo '<script>alert("Este usuario no existe")</script>';
        echo "<script>location.href='registrar.php'</script>";
    }
    }


    
?>
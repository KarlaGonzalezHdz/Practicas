<?php
    session_start();
    if(!isset($_SESSION['rol'])){
        header('location: login.php');
    }else{
        if($_SESSION['rol'] !=2){
        header('location: productos.php');
        }
    }
?>


<html>
<meta charset="utf-8">

<head>
    <title>Proyecto</title>
    <link href="css/pag-style.css" rel="stylesheet">
</head>

<body>
    <div>
        <header>
            <?php
            include('include/Bootstrap.php');
            include('include/menu.php');
            ?>
            
        </header>
    </div>
   

    
</body>

</html>
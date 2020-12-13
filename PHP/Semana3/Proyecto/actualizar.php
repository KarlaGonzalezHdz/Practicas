<html>
<meta charset="utf-8">

<head>
    <title>Proyecto</title>
</head>
<body>
    <div>
        <header>
            <?php
            //menu
            ?>
        </header>
    </div>
    <div>
        <h4>Edicion de usuatios </h4>
        <div>
            <?php
            extract($_GET);
            require("connect_db.php");
            $sql="SELECT * FROM login WHERE id=$id";
            $ressql = mysqli_query($conn, $sql);
            while($row = mysqli_fetch_row($ressql)){
                $id = $row[0];
                $nom = $row[1];
                $user = $row[2];
                $email = $row[3];
                $pass = $row[4];
                $confpass = $row[5];
                $rol = $row[6];
            }
            ?>
            <form action="ejecutarActualizar.php" method="POST">
            <center>
            <label>ID:<br> <input type="text" class="form-control" name="id" value="<?php echo $id ?>" readonly></label><br><br>
            <label>Nombre:<br> <input type="text" class="form-control" name="nom" value="<?php echo $nom ?>"></label><br><br>
            <label>User:<br> <input type="text" class="form-control" name="user" value="<?php echo $user ?>"></label><br><br>
            <label>Email:<br> <input type="text" class="form-control" name="email" value="<?php echo $email ?>"></label><br><br>
            <label>Password:<br> <input type="text" class="form-control" name="pass" value="<?php echo $pass ?>"></label><br><br>
            <label>Confirmación de Password:<br> <input type="text" class="form-control" name="confpass" value="<?php echo $confpass ?>"></label><br><br>
            <label>Rol:<br> <input type="text" class="form-control" name="rol" value="<?php echo $rol ?>"></label><br><br>
            <input type="submit" value="Guardar">
            </center>
        </form>
            
        </div>
    </div>
</body>

</html>
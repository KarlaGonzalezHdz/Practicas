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
        <h4>Edicion de Productos </h4>
        <div>
            <?php
            extract($_GET);
            require("connect_db.php");
            $sql="SELECT * FROM productos WHERE folio=$folio";
            $ressql = mysqli_query($conn, $sql);
            while($row = mysqli_fetch_row($ressql)){
                $folio = $row[0];
                $clave = $row[1];
                $nomprod = $row[2];
                $descrip = $row[3];
                $modelo = $row[4];
                $precio = $row[5];
                $cant = $row[6];
            }
            ?>
            <form action="ejecutarActualizarProducto.php" method="POST">
            <center>
            <label>Folio del producto:<br> <input type="text" class="form-control" name="folio" value="<?php echo $folio ?>" readonly></label><br><br>
            <label>Clave:<br> <input type="text" class="form-control" name="clave" value="<?php echo $clave ?>"></label><br><br>
            <label>Nombre del producto:<br> <input type="text" class="form-control" name="nomprod" value="<?php echo $nomprod ?>"></label><br><br>
            <label>Descripcion del producto:<br> <input type="text" class="form-control" name="descrip" value="<?php echo $descrip ?>"></label><br><br>
            <label>Modelo del producto:<br> <input type="text" class="form-control" name="modelo" value="<?php echo $modelo ?>"></label><br><br>
            <label>Precio del producto:<br> <input type="text" class="form-control" name="precio" value="<?php echo $precio ?>"></label><br><br>
            <label>Cantidad:<br> <input type="text" class="form-control" name="cant" value="<?php echo $cant ?>"></label><br><br>
            <input type="submit" value="Guardar">
            </center>
        </form>
            
        </div>
    </div>
</body>

<?php
    session_start();
    if(!isset($_SESSION['rol'])){
        header('location: login.php');
    }else{
        if($_SESSION['rol'] !=2){
        header('location: login.php');
        }
    }
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Proyecto</title>
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
    <div>

        <head>
            <script src="js/productos.js"></script>
        </head>
        <table>
            <?php 
            require("connect_db.php");
            $sql2 = ("SELECT * FROM productos");
            $query2=mysqli_query($conn, $sql2);
            $i=0;
            while($filas=mysqli_fetch_array($query2)){
                $i = $i++;
                $folio = $filas['folio'];
                $clave = $filas['clave'];
                $nomprod = $filas['nomprod'];
                $descrip = $filas['descrip'];
                $modelo = $filas['modelo'];
                $precio =$filas['precio'];
                $cant =$filas['cant'];
                $imagen =$filas['imagen'];
        ?>
            <td>
                <div class="card-deck">
                    <div class="card">
                        <img src="images/<?php  echo $imagen ?>" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title"><?php  echo $nomprod ?></h5>
                            <p class="card-text"><?php  echo $modelo ?></p>
                            <p class="card-text"><?php  echo $descrip ?></p>
                            <p class="card-text"><input type="text" value="<?php  echo $precio ?>" id="precio"></p>
                            <p class="card-text">Comprar
                                <input type="checkbox"
                                    OnClick="Agregar(document.getElementById('precio').value, this.checked);" />
                            </p>
                        </div>
                    </div>
            </td>
            <?php
                        }
                    $i=1;
                ?>

            <!--     <tr>
                <td rowspan=3>
                    <img height="90px" width="90px" src="images/cpu.jpg" /> Nombre producto: <input type="text"
                        value="CPU Gamer">
                    Marca
                    <input type="text" value="DELL">
                    Precio
                    <input type="text" value="12000" id="precio1">
                    Comprar
                    <input type="checkbox" OnClick="Agregar(document.getElementById('precio1').value, this.checked);" />
                </td>
                <td rowspan=3>
                    <img height="90px" width="90px" src="images/pantalla.jpg"/> Nombre producto: <input type="text"
                        value="Pantalla">
                    Marca
                    <input type="text" value="HP">
                    Precio
                    <input type="text" value="1300" id="precio2">
                    Comprar
                    <input type="checkbox" OnClick="Agregar(document.getElementById('precio2').value, this.checked);" />
                </td>
                <td rowspan=3>
                    <img height="90px" width="90px" src="images/teclado.jpg" /> Nombre producto: <input type="text"
                        value="Teclado">
                    Marca
                    <input type="text" value="Teclado">
                    Precio
                    <input type="text" value="10500" id="precio3">
                    Comprar
                    <input type="checkbox" OnClick="Agregar(document.getElementById('precio3').value, this.checked);" />
                </td>
            </tr>
            <tr>-->
            <td>
                <input type="button" value="Comprar" onClick="Comprar();" />
                <div style="display:none">
                    <input type="text" name="articulos">
                    <input type="text" name="total">
                    <input type="text" name="descuento">
                    <input type="text" name="iva">
                    <input type="text" name="neto">
                </div>
            </td>
            </tr>
        </table>
    </div>
</body>

</html>
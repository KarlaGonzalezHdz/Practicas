<?php
    session_start();
    if(!isset($_SESSION['rol'])){
        header('location: login.php');
    }else{
        if($_SESSION['rol'] !=1){
        header('location: login.php');
        }
    }
?>


<html>
<meta charset="utf-8">

<head>
    <title>Proyecto</title>
    <link href="css/pag-style.css" rel="stylesheet">
</head>
<script type="text/javascript">
    function cambiaVisibilidad() {
        var div1 = document.getElementById('pag1');
        var div2 = document.getElementById('pag2');

        if (div2.style.display == 'block') {
            div2.style.display = 'none';
            div1.style.display = 'block';
        } else {
            div2.style.display = 'block';
            div1.style.display = 'none';
        }
    }
</script>

<body>
    <div>
        <header>
            <?php
            include('include/Bootstrap.php');
            include('include/menu.php');
            ?>
            <a href="#" onclick="cambiaVisibilidad()" style="color:black;"><span>PRODUCTOS</span></a>
        </header>
    </div>
    <div id="pag1">
        <br>
        <h2 style="color:black;text-align:center;">ADMINISTRACIÓN DE USUARIOS REGISTRADOS<h2>
                <hr>
                <div class="pos">
                    <h4>TABLA DE USUARIOS </h4>
                    <div>
                        <?php
                            require("connect_db.php");
                            $sql=("SELECT * FROM login");
                            $query=(mysqli_query($conn, $sql));
                            echo "<div>";
                            echo "<table  class='table table-dark ' style='width:800px' >";
                            echo "<tr>";
                            echo "<td>Id</td>";
                            echo "<td>Nombre</td>";
                            echo "<td>Usuario</td>";
                            echo "<td>Correo</td>";
                            echo "<td>Password</td>";
                            echo "<td>Confirmacion Password</td>";
                            echo "<td>Rol</td>";
                            echo "<td>Editar</td>";
                            echo "<td>Borrar</td>";
                            echo "<tr>";
                        ?>

                        <?php
                            while ($arreglo=mysqli_fetch_array($query)){
                            echo "<tr>";
                            echo "<td>$arreglo[0]</td>";
                            echo "<td>$arreglo[1]</td>";
                            echo "<td>$arreglo[2]</td>";
                            echo "<td>$arreglo[3]</td>";
                            echo "<td>$arreglo[4]</td>";
                            echo "<td>$arreglo[5]</td>";
                            echo "<td>$arreglo[6]</td>";
                            echo "<td><a href='actualizar.php?id=$arreglo[0]'><img src='images/editar.ico' width='50%' ></a></td>";
                            echo "<td><a href='admin.php?id=$arreglo[0]&idborrar=2'><img src='images/borrar.ico' width='50%' ></a></td>";
                            echo "</tr>";
                            }
                            echo "</table>";
                            echo "</div>";
                            extract($_GET);
                            if(@$idborrar==2){
                                $sqlborrar ="DELETE FROM login WHERE id=$id";
                                $resborrar =mysqli_query($conn, $sqlborrar);
                                echo '<script>alert("Registro eliminado")</script>';
                                echo "<script>location.href='admin.php'</script>";
                            }
                        ?>
                    </div>
                </div>
    </div>
    <div style="display:none" ; id="pag2">
    <h2 style="color:black;text-align:center;">ADMINISTRACIÓN DE PRODUCTOS<h2>
        <hr>
        <div class="pos">
            <h4>Tabla de productos </h4>
            <div>
                <?php
                            require("connect_db.php");
                            $sql2=("SELECT * FROM productos");
                            $query2=(mysqli_query($conn, $sql2));
                            
                            echo "<table  class='table table-dark' style='width:800px' >";
                            echo "<tr>";
                            echo "<td>Folio</td>";
                            echo "<td>Clave Producto</td>";
                            echo "<td>Nombre</td>";
                            echo "<td>Descripcion</td>";
                            echo "<td>Modelo</td>";
                            echo "<td>Precio</td>";
                            echo "<td>Cantidad</td>";
                            echo "<td>Editar</td>";
                            echo "<td>Borrar</td>";
                            echo "<tr>";
                        ?>
                <?php
                            while ($arreglo2=mysqli_fetch_array($query2)){
                            echo "<tr>";
                            echo "<td>$arreglo2[0]</td>";
                            echo "<td>$arreglo2[1]</td>";
                            echo "<td>$arreglo2[2]</td>";
                            echo "<td>$arreglo2[3]</td>";
                            echo "<td>$arreglo2[4]</td>";
                            echo "<td>$arreglo2[5]</td>";
                            echo "<td>$arreglo2[6]</td>";
                            echo "<td><a href='actualizarProducto.php?folio=$arreglo2[0]'><img src='images/editar.ico' width='50%' ></a></td>";
                            echo "<td><a href='admin.php?folio=$arreglo2[0]&idborrar2=2'><img src='images/borrar.ico' width='50%' ></a></td>";
                            echo "</tr>";
                        }
                        echo "</table>";
                        extract($_GET);
                        if(@$idborrar2==2){
                            $sqlborrar2 ="DELETE FROM productos WHERE folio=$folio";
                            $resborrar2 =mysqli_query($conn, $sqlborrar2);
                            echo '<script>alert("Producto eliminado")</script>';
                            echo "<script>location.href='admin.php'</script>";
                        }
                        ?>
            </div>
        </div>


    </div>
</body>

</html>
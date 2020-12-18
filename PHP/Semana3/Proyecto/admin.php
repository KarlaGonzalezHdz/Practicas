<html>
<meta charset="utf-8">
<head>
    <title>Proyecto</title>
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
            //menu
            ?>
            <a href="#" onclick="cambiaVisibilidad()">Productos</a>
        </header>
    </div>
    <div id="pag1">
        <br>
        <h2 style="color:#647DC2">Administración de usuarios registrados<h2>
                <hr>
                <div>
                    <h4>Tabla de Usuarios </h4>
                    <div>
                        <?php
                            require("connect_db.php");
                            $sql=("SELECT * FROM login");
                            $query=(mysqli_query($conn, $sql));
                            echo "<table bordercolor='#647dc2' border='3'>";
                            echo "<tr>";
                            echo "<td>Id</td>";
                            echo "<td>Nombre</td>";
                            echo "<td>Usuario</td>";
                            echo "<td>Correo</td>";
                            echo "<td>Password</td>";
                            echo "<td>ConfPassword</td>";
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
                            echo "<td><a href='actualizar.php?id=$arreglo[0]'><img src='images/editar.ico' width='20%' ></a></td>";
                            echo "<td><a href='admin.php?id=$arreglo[0]&idborrar=2'><img src='images/borrar.ico' width='20%' ></a></td>";
                            echo "</tr>";
                            }
                            echo "</table>";
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
        <h2 style="color:#ffff00">Administracion de productos</h2>
        <hr>
        <h4>Tabla de productos </h4>
        <div>
            <?php
                            require("connect_db.php");
                            $sql2=("SELECT * FROM productos");
                            $query2=(mysqli_query($conn, $sql2));
                            echo "<table bordercolor='#647dc2' border='3'>";
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
                            echo "<td><a href='actualizarProducto.php?folio=$arreglo2[0]'><img src='images/editar.ico' width='20%' ></a></td>";
                            echo "<td><a href='admin.php?folio=$arreglo2[0]&idborrar2=2'><img src='images/borrar.ico' width='20%' ></a></td>";
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
</body>

</html>
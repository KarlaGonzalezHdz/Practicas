<html>
<head>
    <title>Ejemplo metodo POST </title>
</head>
<body>
<?php
    if($_POST)
    {
        echo "El formulario se ejecuto con exito";
        echo "<pre>";
        print_r($_POST);
        echo "</pre>";
    }
    ?>

    <form action="" method="post">
    <p>Dime cual es tu nombre: <input type="text" name="nombre">
    <p>Dime cual es tu ciudad: <input type="text" name="ciudad">
    <p>¿En que año naciste:
     <select name="anoFech">
        <option value="null">Selecciona tu año</option>
            <?php
            $anios = 1900;
            while($anios < 2005) {
            
                ?>
            <option value="<?=$anios;?>">
                <?=$anios;?></option>
                <?php 
                $anios++;
            }
            ?>
        </select></p>
        <p> <input type="submit" value="validar"></p>
        </form>
        </body>
        </html>
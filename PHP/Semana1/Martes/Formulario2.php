<html>
<body>
    <?php
        if($_POST['nombre'] || $_POST['edad'])
        {
            echo "Bienvenido al módulo 8 de educación continua ".$_POST['nombre']."<br>";
            echo "Si estas aprovado en el curso por tener ".$_POST['edad']." años";
            exit();
        }
    ?>

    <h1>Formulario </h1>
    <form action=" " method="POST">
    Nombre: <input type="text" name="nombre">
    <br>
    Edad:<input type="text" name="edad">
    <br>

    <input type="submit" value="guardar">
    </form>

    
</body>
</html>
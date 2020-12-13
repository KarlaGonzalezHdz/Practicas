<html>
<meta charset="utf-8">

<head>
    <title>Bienvenidos </title>
    <style type="text/css">
        .button{
        border:1px solid #dedede;
        border-radius: 3px;
        color: white;
        background: blue;
        display: inline-block;
        font: bold 12px Arial;
        padding: 8px 11px;
        text-decoration: none;
    }
    </style>
</head>

<body>
    <div align="center">
        <img src="imagen.jpg">
        <font size=5>
            <b><br>Educación Continua</b>
            <b><br>Datos personales</b>
            <b><br>Formulario</b>
        </font>
        <form  action="conexion.php" method="POST">
            <label>Nombre:<br> <input type="text" class="form-control" name="nombre"></label><br><br>
            <label>Apellido Paterno:<br> <input type="text" class="form-control" name="apellidop"></label><br><br>
            <label>Apellido Materno:<br> <input type="text" class="form-control" name="apellidom"></label><br><br>
            <label>Fecha de nacimiento:<br> <input type="date" class="form-control" name="fechaNac"></label><br><br>
            <label>Correo:<br> <input type="text" class="form-control" name="correo"></label><br><br>
            <label>Telefono:<br> <input type="text" class="form-control" name="Telefono"></label><br><br>
            <Input type="submit" name="b1" value="Enviar" class="button">
        </form>
</body>

</html>
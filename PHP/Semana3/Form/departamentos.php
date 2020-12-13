<html>
<meta charset="utf-8">

<head>
    <title>Alta empresas </title>
    <style type="text/css">
        .button {
            border: 1px solid #dedede;
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
            <b><br>Educación Continua</b><br>
            <b><br>Departamento</b><br>
            <b><br>Formulario</b><br>
        </font>
        <form action="conexion3.php" method="POST">
            <b><br>
                <label>Nombre del departamento:<br> <input type="text" class="form-control"
                        name="nombreDepartamento"></label><br><br>
                <label>Titular:<br> <input type="text" class="form-control" name="titular"></label><br><br>
                <label>Edificio:<br> <input type="text" class="form-control" name="edificio"></label><br><br>
                <label>Piso:<br> <input type="text" class="form-control" name="piso"></label><br><br>
                <label>Correo:<br> <input type="text" class="form-control" name="correo"></label><br><br>
                <label>Telefono:<br> <input type="text" class="form-control" name="telefono"></label><br><br>
            </b>
            <Input type="submit" name="b1" value="Enviar" class="button">
        </form>
        <table>
            <tr>
                <td>
                    <form name="form3" action="empleados.php"><input type="submit" name="b3" value="Regresar"
                            class=button></form>
                </td>
                <td>
                    <form name="form5" action="Bienvenida.php"><input type="submit" name="b3" value="Inicio"
                            class=button></form>
                </td>
        </table>
</body>

</html>
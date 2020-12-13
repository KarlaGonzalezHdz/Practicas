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
            <b><br>Educación Continua</b>
            <b><br>Empresas</b>
            <b><br>Formulario</b>
        </font>
        <form action="conexion2.php" method="POST">
            <label>Nombre:<br> <input type="text" class="form-control" name="nombre"></label><br><br>
            <label >Giro:</label>
            <select name="giro" type='text' >
                <option >Transporte</option>
                <option >Turismo</option>
                <option >Servicio Publico</option>
                <option >Educación</option>
                <option >Salud</option>
                <option >Comunicacion</option>
            </select> <br><br>
            <label>Pais:<br> <input type="text" class="form-control" name="pais"></label><br><br>
            <label>Sueldo:<br> <input type="text" class="form-control" name="sueldo"></label><br><br>
            <label >Tipo de Pago:</label>
            <select name="tipoPago" type='text' >
                <option >Diario</option>
                <option >Semanal</option>
                <option >Cartocenal</option>
                <option >Quincenal</option>
                <option >Mensual</option>
            </select> <br><br>
            <label>Correo:<br> <input type="text" class="form-control" name="correo"></label><br><br>
            <Input type="submit" name="b1" value="Enviar" class="button">
        </form>
        <table>
            <tr>
                <td><form name="form3" action="empleados.php"><input type="submit" name="b3"  value="Regresar" class=button></form></td>
                <td><form name="form5" action="departamentos.php"><input type="submit" name="b3"  value="Avanzar" class=button></form></td>
        </table>
</body>

</html>
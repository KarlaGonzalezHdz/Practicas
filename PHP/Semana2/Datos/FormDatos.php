<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rehabilitación</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
        integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
        integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous">
    </script>
</head>

<body>
    <div style="text-align: -webkit-center; " class="mt-5">
        <div class="card" style="max-width: 40rem;">
            <div class="card-body">
                <form action="conexion.php" method="POST">
                    <p>
                        <h2> Datos personales</h2>
                    </p>
                    <label>Nombre: <input type="text" class="form-control" name="nombre"></label><br><br>
                    <label>Apellido Paterno: <input type="text" class="form-control" name="apellidop"></label><br><br>
                    <label>Apellido Materno: <input type="text" class="form-control" name="apellidom"></label><br><br>
                    <label>Fecha de nacimiento: <input type="date" class="form-control" name="fechaNacimiento"></label><br><br>
                    <hr>
                    <p>
                        <h2> Dirección</h2>
                    </p>
                    <label>Calle: <input type="text" class="form-control" name="calle"></label><br><br>
                    <label>Número: <input type="text" class="form-control" name="numero"></label><br><br>
                    <label>Colonia: <input type="text" class="form-control" name="colonia"></label><br><br>
                    <label>Ciudad: <input type="text" class="form-control" name="ciudad"></label><br><br>
                    <label>Código postal: <input type="text" class="form-control" name="cp"></label><br><br>
                    <label>Estado: <input type="text" class="form-control" name="estado"></label><br><br>
                    <label>Telefono: <input type="text" class="form-control" name="telefono"></label><br><br>
                    <hr>
                    <p>
                        <h2> Datos de identificación</h2>
                    </p>
                    <label>Correo: <input type="text" class="form-control" name="correo"></label><br><br>
                    <label>Usuario: <input type="text" class="form-control" name="usuario"></label><br><br>
                    <label>Contraseña: <input type="password" class="form-control" name="contrasena"></label><br><br>
                    <label>Confirmación de contraseña: <input type="password" class="form-control" name="contrasenac"></label><br><br>

                    <button type="submit" class="btn btn-primary" name="guardar">Guardar</button>
                </form>
            </div>
        </div>
    </div>

</body>

</html>
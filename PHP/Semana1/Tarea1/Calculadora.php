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
    <div>
        <h1 style="text-align: -webkit-center; ">CALCULADORA</h1>
        <div style="text-align: -webkit-center; " class="mt-5">
            <div class="card" style="max-width: 18rem;">
                <div class="card-body">
                    <form action="Procedimiento.php" method="POST">
                        <div class="form-group  mx-sm-3 mb-2 ">
                            <label for="numero1">Primer numero: </label>
                            <input type="text" class="form-control" name="numero1"> <br>
                            <label for="numero2">segundo numero: </label>
                            <input type="text" class="form-control" name="numero2">
                        </div>
                </div>
            </div>
            <br>
            <div>
                <button type="submit" class="btn btn-primary" name="sumar">Suma</button>
                <button type="submit" class="btn btn-primary" name="restar">Resta</button>
                <button type="submit" class="btn btn-primary">Multiplicación</button>
                <button type="submit" class="btn btn-primary">Modulo</button>
            </div>
            </form>
        </div>
    </div>
</body>

</html>
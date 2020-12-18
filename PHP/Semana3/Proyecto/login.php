<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Registro</title>
  <link href="css/login-style.css" rel="stylesheet">
  <!-- Bootstrap core Library -->
  <link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
  <script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
  <!-- Google font -->
  <link href="https://fonts.googleapis.com/css?family=Dancing+Script" rel="stylesheet">
  <!-- Font Awesome-->
  <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet">
</head>

<body>
  <!-- Page Content -->
  <form action="" method="POST">
    <div class="container">
      <div class="row">
        <div class="col-md-offset-3 col-md-6 text-center mt-5">
          <div class="form-login"></br>
            <h4>INICIO DE SESIÓN</h4>
            </br>
            <label>CORREO</label> <br>
            <input type="text" id="email" name="email" class="form-control input-sm chat-input"
              placeholder="Ingresa tu correo" />
            </br></br>
            <label>CONTRASEÑA</label> <br>
            <input type="password" id="userPassword" name="password" class="form-control input-sm chat-input"
              placeholder="Ingresa tu contraseña" />
            </br></br>
            <div class="wrapper">
              <span class="group-btn">
                <label for="remember-me" class=""><span>Recuerdame</span> <span><input id="remember-me"
                      name="remember-me" type="checkbox"></span></label><br><br><br>
                <input type="submit" name="submit" class="btn btn-info btn-md" value="Aceptar"
                  onclick="form.action='validar.php'"><br><br>
                  <a href="restablecerContraseña.php" class="" style="color:white;"><span>Restablecer la contraseña</span></a> <br><br><br><br>
              </span>
            </div>
            <div id=" wrapperregister-link" class="text-right">
              <a href="registrar.php" class="" style="color:white;"><span>Registrarse</span></a> <br><br><br><br>
            </div>
          </div>
        </div>
      </div>
      </br></br></br>
      <!--footer-->
      <div class="footer text-white text-center">
        <p>© 2020 Tecnica en Desarrollo Web - Modulo 8 | Karla GH </p>
      </div>

    </div>
  </form>
</body>

</html>
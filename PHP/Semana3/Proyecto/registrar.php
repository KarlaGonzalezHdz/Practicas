<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Registro</title>
  <link href="css/login-style.css" rel="stylesheet" id="style">
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
<form action="" method="POST">
  <!-- Page Content -->
    <div class="container">
      <div class="row">
        <div class="col-md-offset-3 col-md-6 text-center">
          <div class="form-login"></br>
            <h4>REGISTRAR USUARIO</h4>
            </br>
            <label>NOMBRE</label> <br>
            <input type="text" id="nom" name="nom" class="form-control input-sm chat-input"
              placeholder="Ingresa tu nombre" />
            </br></br>
            <label>Usuario</label> <br>
            <input type="text" id="user" name="user" class="form-control input-sm chat-input"
              placeholder="Ingresa tu correo" />
            </br></br>
            <label>CORREO</label> <br>
            <input type="text" id="email" name="email" class="form-control input-sm chat-input"
              placeholder="Ingresa tu correo" />
            </br></br>
            <label>CONTRASEÑA</label> <br>
            <input type="pass" id="userPassword" name="pass" class="form-control input-sm chat-input"
              placeholder="Ingresa tu contraseña" />
            </br></br>
            <label>CONFIRMACIÓN DE CONTRASEÑA</label> <br>
            <input type="text" id="confpass" name="confpass" class="form-control input-sm chat-input"
              placeholder="Ingresa tu correo" />
            </br></br>
            <div class="wrapper">
              <span class="group-btn">
                <input type="submit" name="submit" class="btn btn-info btn-md" value="Registrar"
                  onclick="form.action='InsertarUsuario.php'"><br><br>
              </span>
            </div>
            <div id=" wrapperregister-link" class="text-right">
              <a href="login.php" class="" style="color:white;"><span>Iniciar Sesion</span></a> <br><br><br><br>
            </div>
          </div>
        </div>
      </div>
      </br></br></br>
      <!--footer-->
      <div class="footer text-white text-center">
      <p>© 2020 Tecnica en Desarrollo Web - Modulo 8 |  Karla GH </p>
      </div>
      <!--//footer-->
    </div>
  </form>
</body>

</html>
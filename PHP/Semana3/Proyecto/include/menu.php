<nav class="navbar navbar-expand-lg  navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Bienvenido <?php echo $_SESSION['username']; ?></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNav">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="./index2.php">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="./admin.php">Admin</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="./productos.php">Productos</a>
        </li>
        <li class="nav-item">
          <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
        </li>
      </ul>
      <a href="desconectar.php">Cerrar Sesion</a>
    </div>
  </div>
</nav>
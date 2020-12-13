
<?php

echo "Hola ", htmlspecialchars($_POST['nombre']). ' ', htmlspecialchars($_POST['apellidop']). ' '.htmlspecialchars($_POST['apellidom']);
?>

<br>
<hr>

<?php
echo "Su dirección es :";
echo htmlspecialchars($_POST['calle']). ' ';
echo (int) $_POST['numero'].'<br>';
echo htmlspecialchars($_POST['colonia']).'<br>', (int)$_POST['cp']. ' ';
echo htmlspecialchars($_POST['ciudad']).' ', $_POST['estado'];

echo '<br> Su telefono es '. htmlspecialchars($_POST['telefono']); 
echo '<br> Su fecha de nacimiento es '. htmlspecialchars($_POST['fechaNacimiento']); 
echo '<hr>';

$fecha = new DateTime($_POST['fechaNacimiento']);
$date1 = $fecha ->format('d-M-Y');
echo '<br> Su fecha de nacimiento es '.$date1; 
?>
<hr>
<br>
<?php
echo "Su correo es :";
echo htmlspecialchars($_POST['correo']). '<br> ';
?>

<br>
<?php
echo "Su usuario es :";
echo htmlspecialchars($_POST['usuario']). '<br> ';
?>

<br>
<?php
echo "Su contraseña es :";
echo htmlspecialchars($_POST['contraseña']). '<br> ';
?>

<br>
<?php
echo "Su  confirmacion de contraseña es :";
echo htmlspecialchars($_POST['contraseña2']). '<br> ';
?>

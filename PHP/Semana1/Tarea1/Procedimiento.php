<?php
    
        $n1 = (int)$_POST['numero1'];
        $n2 = (int)$_POST['numero2']; 
        $suma = $n1+$n2;
        echo "<div style='text-align: -webkit-center;'>";
        echo "<h1>RESULTADO</h1>";
        echo "El resultado de la suma " .$_POST['numero1']." + ".$_POST['numero2']." = ". $suma;
        echo "</div>";
        ob_start();
        header("refresh:5, url=Calculadora.php");
        ob_end_flush();
?>
<?php

    $a = "En el contenedor 12";
    $b = "Jose";
    $c = "Atendio al empleado 3 al 52";

    function ejemplo_variables()
    {
        global $a, $b , $c;
        //Se imprime lo siguiente
        echo $b."<br>".$c."<br>".$a;
    }

    //Ejecutamos funcion
    ejemplo_variables();
?>